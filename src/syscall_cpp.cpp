#include "../h/syscall_cpp.hpp"

void* operator new (size_t mem){ return mem_alloc(mem);}
void* operator new[](size_t size) { return mem_alloc(size); }

void operator delete(void* addr) { mem_free(addr); }
void operator delete[](void* addr) { mem_free(addr); }


int Thread::max_of_threads=0;
int Thread::curr_threads=0;

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
    if(max_of_threads){
        if(curr_threads+1>max_of_threads){
            return block_thread(&myHandle,body, arg);
        }
        else curr_threads++;
    }
    return thread_create(&myHandle,body, arg);
}

int Thread::sleep(time_t time)
{
    return time_sleep(time);
}

void Thread::SetMaximumThreads(int num_of_threads, int max_time, int interval_time)
{
    max_of_threads=num_of_threads;
    set_max_threads(num_of_threads,max_time,interval_time);
}

void Thread::join(time_t tajm)
{
    thread_join(&myHandle,tajm);
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