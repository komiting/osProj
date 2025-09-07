#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"
int main(){
    MemoryAllocator::initMemory();
    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    //globalno prihvatamo prekide u supervizorskom modu
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    printInteger(mem_get_largest_free_block());
    printString("\n");
    void* test=mem_alloc(100);
    printInteger(mem_get_largest_free_block());
    printString("\n");
    mem_free(test);
    printInteger(mem_get_free_space());
    printString("\n");
    void* test2 = mem_alloc(100);
    void* test21 = mem_alloc(200);
    mem_free(test2);
    printInteger(mem_get_free_space());
    printString("\n Nakon oslobadjanja 100 sa pocetka, dok jos uvek imamo 200 i dodavanje 50\n");
    void* test22 = mem_alloc(50);
    printInteger(mem_get_free_space());
    printString("\n");
    printInteger(mem_get_largest_free_block());
    printString("Oslobadjanje i 200, tkd ostaje samo 50 na pocetku\n");
    mem_free(test21);

    printInteger(mem_get_largest_free_block());
    printString("\n");
    mem_free(test22);

    printInteger(mem_get_largest_free_block());
    printString("\n");
    printString("gotov!\n");
    return 0;
}