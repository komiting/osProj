//
// Created by os on 9/8/25.
//

#include "../h/Semaphore.hpp"

mySemaphore *mySemaphore::createSemaphore(unsigned int i) {
    return new mySemaphore(i);
}

mySemaphore::~mySemaphore()
{
    close();
}

int mySemaphore::close() {
    if(closed) return -1;

    closed=true;
    while(blockedQ.getSize()){
        unblock();
    }
    return 0;
}
int mySemaphore::wait() {
    if(closed) return -1;
    if(--this->val<0) block();

    if(TCB::running->isClosed()) return -1;

    return 0;
}

int mySemaphore::signal() {
    if(closed) return -1;
    if(++this->val<=0) unblock();

    return 0;
}
void mySemaphore::block()
{
  TCB::running->setBlocked(true);
  blockedQ.addLast(TCB::running);
  TCB::dispatch();
}

void mySemaphore::unblock()
{
    TCB* cur=blockedQ.removeFirst();
    if(closed) cur->setClosed(true);
    cur->setBlocked(false);
    Scheduler::put(cur);
}
