//
// Created by os on 9/24/25.
//

#include "../h/syscall_cpp.hpp"
#include "printing.hpp"
#include "setMaxThreads.hpp"

static volatile int ThreadEnd=20;
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
        while(ThreadEnd)
        {
            printString("Nit broj: ");
            printInt(id);
            printString("\n");
            if(!finished){
                ThreadEnd--;
                finished=true;
            }
            sleep(10);
        }
        sem->signal();
    }
};
void setMaxThreads(){

    Thread::SetMaximumThreads(3,20,10);
    Semaphore* waitForAll = new Semaphore(0);
    Thread* threads[20];
    for(int i=0; i<20;i++){
        threads[i]= new A(i,waitForAll);
    }
    for(int i=0;i<20;i++){
        threads[i]->start();
    }
    for(int i=0;i<20;i++) waitForAll->wait();
    delete waitForAll;

    printString("Gotovo! \n");
}