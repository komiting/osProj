#include "../h/tcb.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/Semaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"
#include "../h/myConsole.hpp"
extern void userMain();

void userMainWrapper(void* arg){
    userMain();
}
void idle(void* arg){
    while(true) thread_dispatch();
}
int main(){
    MemoryAllocator::initMemory();
    TCB *threads[5];
    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    //globalno prihvatamo prekide u supervizorskom modu
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    threads[0]=TCB::createThreadBasic(nullptr,nullptr);
    TCB::running = threads[0];
    uint64 *stack1 = (uint64 *) MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    myConsole::initConsole();
    myConsole::consumer = TCB::createThreadKernel(&myConsole::putcHandlerWrapper, nullptr, stack1);

    Thread* idleThread = new Thread(idle,nullptr);
    Semaphore* sem = new Semaphore(0);
    idleThread->start();

    Thread* userThread = new Thread(userMainWrapper, sem);
    userThread->start();

    myConsole::wait();
    sem->wait();

    return 0;
}