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

    bool isBlocked(){return blocked;}
    void setBlocked(bool flag){ TCB::blocked = flag;}

    bool isClosed(){return closed;}
    void setClosed(bool flag){ TCB::closed = flag;}

    bool isSlept(){return sleep;}
    void setSleep(bool flag){ TCB::sleep = flag;}

    uint64 getTimeSlice() const {return timeSlice;}
    using Body = void (*)(void*);
    static TCB *createThread(Body body, void* arg, void* stackSpace);
    static TCB *createThreadBasic(Body body,void* arg);
    static TCB *createThreadKernel(Body body,void* arg, void* stackSpace);

    static TCB* running;
private:
    TCB(Body body, void* arg,uint64 timeslice) : body(body),arg(arg),
                                       stack(body!=nullptr? (char*)(new char*[DEFAULT_STACK_SIZE]): nullptr),timeSlice(timeslice),
                                       context({
                                                       (uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                                               }),
                                       finished(false),
                                       blocked(false),
                                       closed(false),
                                       sleep(false)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    }
    TCB(Body body, uint64 timeslice,void* arg,void* stackSpace,bool kernel=false) : body(body),arg(arg),
                                       stack((char*)stackSpace),timeSlice(timeslice),
                                       context({
                                                       kernel? (uint64) &kernelWrapper:(uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                                               }),
                                       finished(false),
                                       blocked(false),
                                       closed(false),
                                       sleep(false)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    }
    struct Context{
        uint64 ra;
        uint64 sp;
    };
    Body body;
    void* arg;
    char *stack;
    uint64 timeSlice;
    Context context;
    bool finished;
    bool blocked;
    bool closed;
    bool sleep;
    friend class Riscv;
    friend class mySemaphore;
    //trenutne ra i sp stavljamo u oldcontext, a ra i sp novog konteksta stavljao u registre
    static void contextSwitch(Context* oldContext, Context* runningContext);
    static void dispatch();
    static void toSleep(uint64 sleep);
    //posto u workeru ne obavestavamo da smo zavrsili, da bi pustili nit treba nam wrapper, koji ce se izvrasvati prvi, i
    // onda on poziva body
    static void threadWrapper();
    static void kernelWrapper();
    static uint64 timeSliceCounter;
    static uint64 timeCur;
};


#endif //OS1_VEZBE07_SYNCHRONOUS_CCB_HPP
