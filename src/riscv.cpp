//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::handleSupervisorTrap(){
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
        //nije interrupt, nego enviroment call iz S- moda
        //ecall u sepc ubacuje NJEGOVU adresu, a ne adresu sledece instrukcije, znaci mi treba da upisemo
        //+4, jer je toliko udaljena sledeca instrukcija
        uint64 volatile sepc = r_sepc()+4;
        uint64 volatile sstatus = r_sstatus();
        uint64 volatile a0;
        __asm__ volatile("mv %0, a0":"=r"(a0));
        switch(a0){
            case MEM_ALLOC:
            {
                size_t volatile a1;
                __asm__ volatile("mv %0, a1":"=r"(a1));
                uint64* ret;
                ret=(uint64*)MemoryAllocator::mem_alloc(a1);
                __asm__ volatile("mv a0,%0"::"r"((uint64)ret));
                //nmg samo da ubacim vrednost u a0 jer kad zavrsim ovu funkciju meni ce sa steka procitati stari a0
                __asm__ volatile("sd a0,80(fp)");
                break;
            }
            case MEM_FREE:
            {
                void* volatile addr;
                __asm__ volatile("mv %0, a1":"=r"(addr));
                uint64 volatile flag;
                flag=(uint64)MemoryAllocator::mem_free(addr);
                __asm__ volatile("mv a0, %0"::"r"(flag));
                __asm__ volatile("sd a0,80(fp)");
                break;
            }
        }

/*
        TCB::timeSliceCounter=0;
        TCB::dispatch();
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);

    }
    if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver prekid
    {
        TCB::timeSliceCounter++;
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
            //odavde nije povratna adresa u ra nego je u sepc, pa moramo to eksplicitno cuvati ovde, jer se u
            //dispatchu ne cuva
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter=0;
            TCB::dispatch();
            w_sepc(sepc);
            w_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause==0x8000000000000009UL){
        //console interrupt

        console_handler();
    }
    else{
        //unexpected inerrupt
        //scause - sta se  desilo
        //sepc- gde se desilo
        // stval - dodatno opise cause

    }
}