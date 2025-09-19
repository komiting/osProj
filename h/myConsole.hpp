//
// Created by os on 9/10/25.
//

#ifndef OS1_VEZB07_MYCONSOLE_HPP
#define OS1_VEZB07_MYCONSOLE_HPP
#include "../h/syscall_c.h"
#include "../h/Semaphore.hpp"
class myConsole
{
public:

    static void initConsole(){
        inputBuf = new char[1024];
        outputBuf = new char[1024];
        inputItemAvail = mySemaphore::createSemaphore(0);
        outputItemAvail = mySemaphore::createSemaphore(0);
        inputSpaceAvail = mySemaphore::createSemaphore(1023);
        outputSpaceAvail = mySemaphore::createSemaphore(1023);
        mutexIn = mySemaphore::createSemaphore(1);
        mutexOut = mySemaphore::createSemaphore(1);
    }
    static TCB* consumer;
    static char getInput();
    static char getOutput();
    static void setInput(char c);
    static void setOutput(char c);
    static void putcHandlerWrapper(void*);
    static void console_handler();
    static void wait();
private:
    static void putcHandler(); // Takes a character from local buffer to controller
    static int inputHead, inputTail,outputHead,outputTail;
    static char* inputBuf;
    static char* outputBuf;
    static int outSize;
    static mySemaphore *inputItemAvail, *outputItemAvail, *inputSpaceAvail, *outputSpaceAvail, *mutexIn, *mutexOut;

};


#endif //OS1_VEZB07_MYCONSOLE_HPP
