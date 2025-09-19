//
// Created by os on 9/10/25.
//

#include "../h/myConsole.hpp"
int myConsole::inputTail=0;
int myConsole::inputHead=0;
int myConsole::outputTail=0;
int myConsole::outSize=0;
int myConsole::outputHead=0;
char* myConsole::inputBuf=nullptr;
char* myConsole::outputBuf=nullptr;
mySemaphore* myConsole::inputItemAvail;
mySemaphore* myConsole::outputSpaceAvail;
mySemaphore* myConsole::outputItemAvail;
mySemaphore* myConsole::inputSpaceAvail;
mySemaphore* myConsole::mutexIn;
mySemaphore* myConsole::mutexOut;
TCB* myConsole::consumer;
char myConsole::getInput()
{
    inputItemAvail->wait();
    mutexIn->wait();
    char ret=inputBuf[inputHead];
    inputHead=(inputHead+1)%1024;

    mutexIn->signal();
    inputSpaceAvail->signal();
    return ret;
}

char myConsole::getOutput()
{
    outputItemAvail->wait();
    mutexOut->wait();
    char ret=outputBuf[outputHead];
    outputHead=(outputHead+1)%1024;
    outSize--;

    mutexOut->signal();
    outputSpaceAvail->signal();
    return ret;
}

void myConsole::setInput(char c)
{
    inputSpaceAvail->wait();
    mutexIn->wait();
    inputBuf[inputTail]=c;
    inputTail=(inputTail+1)%1024;
    mutexIn->signal();
    inputItemAvail->signal();
}

void myConsole::setOutput(char c)
{
    outputSpaceAvail->wait();
    mutexOut->wait();

    outputBuf[outputTail]=c;
    outputTail=(outputTail+1)%1024;
    outSize++;

    mutexOut->signal();
    outputItemAvail->signal();

}

void myConsole::putcHandlerWrapper(void *arg)
{
    putcHandler();
}


void myConsole::putcHandler()
{   //uzima znak po znak iz izlaznog buffera i prenosi ga kontroleru konzole
    char* insert = (char* ) CONSOLE_TX_DATA;
    while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT){
        *insert = getOutput();
    }
}

void myConsole::console_handler()
{
    //smestamo u ulazni bafer
    if(plic_claim() == CONSOLE_IRQ){
        char* write = (char*) CONSOLE_RX_DATA;
        while(*(char*) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
            setInput(*write);
        }
        plic_complete(CONSOLE_IRQ);
    }

}

void myConsole::wait()
{
    while(outSize) thread_dispatch();
}
