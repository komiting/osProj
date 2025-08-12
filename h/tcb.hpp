//
// Created by os on 8/9/25.
//

#ifndef OS1_VEZBE07_SYNCHRONOUS_CCB_HPP
#define OS1_VEZBE07_SYNCHRONOUS_CCB_HPP


#include "../lib/hw.h"
#include "../h/scheduler.hpp"
class TCB
{
public:
    ~TCB(){delete[] stack;}

    bool isFinished(){return finished;}
    void setFinished(bool flag){ TCB::finished = flag;}

    uint64 getTimeSlice() const {return timeSlice;}
    using Body = void (*)();
    static TCB *createCoroutine(Body body);

    static void yield();

    static TCB* running;
private:

    TCB(Body body, uint64 timeslice) : body(body),
                     stack(body!=nullptr? new uint64[STACK_SIZE] : nullptr),timeSlice(timeslice),
                     context({
                         (uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                    }),
                     finished(false)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    }
    struct Context{
        uint64 ra;
        uint64 sp;
    };
    Body body;
    uint64 *stack;
    uint64 timeSlice;
    Context context;
    bool finished;
    friend class Riscv;
    //trenutne ra i sp stavljamo u oldcontext, a ra i sp novog konteksta stavljao u registre
    static void contextSwitch(Context* oldContext, Context* runningContext);
    static void dispatch();

    //posto u workeru ne obavestavamo da smo zavrsili, da bi pustili nit treba nam wrapper, koji ce se izvrasvati prvi, i
    // onda on poziva body
    static void threadWrapper();
    static uint64 timeSliceCounter;
    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
};


#endif //OS1_VEZBE07_SYNCHRONOUS_CCB_HPP
