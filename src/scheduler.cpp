//
// Created by marko on 20.4.22..
//

#include "../h/scheduler.hpp"

List<TCB> Scheduler::readyThreadQueue;
List<TCB> Scheduler::sleepingThreadQueue;

TCB *Scheduler::get()
{
    return readyThreadQueue.removeFirst();
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
}

TCB *Scheduler::getSorted()
{
    return sleepingThreadQueue.removeFirst();
}

uint64 Scheduler::getWakeTime() {
    return sleepingThreadQueue.peekFirstTime();
}

void Scheduler::putSorted(TCB *ccb,uint64 wakeTime)
{
    sleepingThreadQueue.addSorted(ccb,wakeTime);
}
