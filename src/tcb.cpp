//
// Created by os on 8/9/25.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
//extern "C" void pushRegisters();//extern C mora da bi se izbegao name mangling, bez ovoga kako jeste

TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;
uint64 TCB::timeCur=0;

TCB *TCB::createThread(Body body, void* arg, void* stackSpace)
{
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace);
}

void TCB::dispatch()
{
    TCB* old = running;
    if(!old->isFinished() && !old->isBlocked() && !old->isSlept()) Scheduler::put(old);
    else if(old->isFinished()) {
        //MemoryAllocator::mem_free(old->stack);
        //MemoryAllocator::mem_free(old);
    }
    running=Scheduler::get();

        //za novonastale niti, tj niti koje su stavljen u scheduler a nikad ranije nisu koriscne
        //njihova povratna adresa zbog nacina na koji smo ih pravili ce biti postavljena
        // na threadWrapper funkciju, odakle ce da pokrene njen tok
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper(){
    //mi smo i dalje u prekidnoj ruti zato sto je iz prekidne rutine pozvan dispatch, samim tim i ovaj threadwrapper
    //zato zbog toga ako bi zeleli da predjemo u korisnicki rezim morali bi da skinemo SPP = supervisor previous privilege
    // i da dozvolimo prekid opet - SPIE
    //za prvi poziv niti ovde ce se izaci iz prekidne rutine, samim tim moramo obezbediti da se ovde prekid zavrsi
    Riscv::popSppSpie();
    running->body(running->arg);//user mode
    thread_exit();//user mode
}

TCB *TCB::createThreadBasic(TCB::Body body, void *arg)
{
    return new TCB(body,arg,DEFAULT_TIME_SLICE);
}

void TCB::toSleep(uint64 wakeTime)
{
    running->setSleep(true);
    Scheduler::putSorted(running,wakeTime);
}
