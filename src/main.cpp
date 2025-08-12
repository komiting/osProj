#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
int main(){
    TCB *threads[5];

    threads[0] = TCB::createCoroutine(nullptr);

    TCB::running = threads[0];
    threads[1] = TCB::createCoroutine(workerBodyA);
    printString("Coroutine A created! \n");
    threads[2] = TCB::createCoroutine(workerBodyB);
    printString("Coroutine B created! \n");
    threads[3] = TCB::createCoroutine(workerBodyC);
    printString("Coroutine C created! \n");
    threads[4] = TCB::createCoroutine(workerBodyD);
    printString("Coroutine D created! \n");

    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    //globalno prihvatamo prekide u supervizorskom modu
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    //posto u korutinama pozivaju yield, da se ne bi vratilo na main korutinu, cepamo uposleno cekanje
    while(!(threads[1]->isFinished() &&
            threads[2]->isFinished() &&
            threads[3]->isFinished() &&
            threads[4]->isFinished())){
        TCB::yield();
    }
    for(auto &coroutine : threads){
        delete coroutine;
    }
    printString("gotov!\n");
    return 0;
}