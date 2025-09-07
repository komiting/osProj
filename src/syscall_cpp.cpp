#include "../h/syscall_cpp.hpp"

void* operator new (size_t mem){ return mem_alloc(mem);}
void* operator new[](size_t size) { return mem_alloc(size); }

void operator delete(void* addr) { mem_free(addr); }
void operator delete[](void* addr) { mem_free(addr); }
/*
Thread::Thread(void (*body)(void *), void *arg)
{

}

void Thread::dispatch()
{

}

Thread::~Thread()
{

}

int Thread::start()
{
    return 0;
}

int Thread::sleep(time_t)
{
    return 0;
}

Thread::Thread()
{

}
*/