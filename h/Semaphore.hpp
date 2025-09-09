//
// Created by os on 9/8/25.
//

#ifndef OS1_VEZB07_SEMAPHORE_HPP
#define OS1_VEZB07_SEMAPHORE_HPP
#include "./list.hpp"
#include "./tcb.hpp"
class TCB;
class mySemaphore
{
public:
    static mySemaphore* createSemaphore(unsigned int init=1);
    ~mySemaphore();
    int wait();
    int signal();
    int close();

private:
    mySemaphore(int init) : blockedQ(),val(init),closed(false){}
    List<TCB> blockedQ;
    int val;
    void block();
    void unblock();
    bool closed;
};


#endif //OS1_VEZB07_SEMAPHORE_HPP
