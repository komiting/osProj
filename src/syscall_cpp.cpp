#include "../h/syscall_cpp.hpp"

void* operator new (size_t mem){ return mem_alloc(mem);}
void* operator new[](size_t size) { return mem_alloc(size); }

void operator delete(void* addr) { mem_free(addr); }
void operator delete[](void* addr) { mem_free(addr); }

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr),body(body),arg(arg)
{

}

Thread::~Thread() = default;

Thread::Thread() : myHandle(nullptr),body(runWrapper),arg(this)
{

}

void Thread::dispatch()
{
    thread_dispatch();
}

int Thread::start()
{
    return thread_create(&myHandle,body, arg);
}

int Thread::sleep(time_t time)
{
    return time_sleep(time);
}


Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period) :Thread(),period(period){

}

void PeriodicThread::terminate() {
    period=0;
}
void PeriodicThread::run() {
    while(period){
        periodicActivation();
        sleep(period);
    }
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}