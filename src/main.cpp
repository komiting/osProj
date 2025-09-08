#include "../h/tcb.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"

extern void userMain();

void userMainWrapper(void* arg){
    userMain();
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

    TCB* userThread=TCB::createThreadBasic(&userMainWrapper,nullptr);
    while(!userThread->isFinished()) {
        thread_dispatch();
    }

    printString("Vratio sam se u main\n");

    return 0;
}