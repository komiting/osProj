//
// Created by os on 9/24/25.
//

#include "thread_join_async.hpp"
#include "../h/syscall_cpp.hpp"
#include "printing.hpp"
#include "../h/tcb.hpp"

class A : public Thread{
    int id;
    Semaphore* sem;
    bool finished;
public:
    A(int id,Semaphore* sem) : Thread(), id(id) ,sem(sem),finished(false){}
    void run() override{
        work();
    }
private:
    void work(){

        printString("Ja sam glavna: ");
        printInt(id);
        printString("\n");
        for(int i = 0 ; i< 100000; i++){
            for(int j=0;j<100000;j++);
            if(i==150 || i==70000) printString(" glavna obrada ");
        }

        printString("Gotova glavna nit: ");
        printInt(id);
        printString("\n");
        sem->signal();
    }
};

class B : public Thread{
    int id;
    Semaphore* sem;
    Thread* treca;
    time_t vreme;
public:
    B(int id,Semaphore* sem,Thread* tcb, time_t vreme) : Thread(), id(id) ,sem(sem),treca(tcb),vreme(vreme){}
    void run() override{
        work();
    }
private:
    void work(){
        printString("Ja sam nit: ");
        printInt(id);
        printString("\n");
        treca->join(vreme);
        if(vreme) printString("Vreme je proslo!\n");
        for(int i = 0 ; i< 100; i++){
            for(int j=0;j<1000;j++);
            if(i<10 || i>90)printString(" obrada niti: ");
            printInt(id);
        }
        printString("Gotova nit: ");
        printInt(id);
        printString("\n");
        sem->signal();
    }
};
void thread_join_async(){

    Thread* threads[3];
    Semaphore* waitForAll = new Semaphore(0);

    threads[2] = new A(2,waitForAll);
    threads[0] = new B(0,waitForAll,threads[2],10);
    threads[1] = new B(1,waitForAll,threads[2],0);

    threads[2]->start();
    threads[0]->start();
    threads[1]->start();

    Thread::dispatch();
    for(int i = 0; i < 3; i++){
        waitForAll->wait();
    }

}