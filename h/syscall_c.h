#ifndef syscall_c
#define syscall_c
#include "../lib/hw.h"

constexpr uint64 MEM_ALLOC = 0x01;
constexpr uint64 MEM_FREE= 0x02;
constexpr uint64 MEM_FREE_SPACE= 0x03;
constexpr uint64 MEM_LARGEST_BLOCK_SYSCALL= 0x04;
constexpr uint64 THREAD_CREATE = 0x11;
constexpr uint64 THREAD_EXIT = 0x12;
constexpr uint64 THREAD_DISPATCH = 0x13;
constexpr uint64 SEM_OPEN = 0x21;
constexpr uint64 SEM_CLOSE = 0x22;
constexpr uint64 SEM_WAIT = 0x23;
constexpr uint64 SEM_SIGNAL = 0x24;
constexpr uint64 TIME_SLEEP = 0x31;
constexpr uint64 GETC = 0x41;
constexpr uint64 PUTC = 0x42;

void* mem_alloc(size_t size);

int mem_free(void*);

size_t mem_get_free_space();

size_t mem_get_largest_free_block();

class _thread;
typedef _thread* thread_t;

int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);
int thread_exit();
void thread_dispatch();

class _sem;
typedef _sem* sem_t;

int sem_open (
        sem_t* handle,
        unsigned init
        );
int sem_close(sem_t handle);
int sem_wait(sem_t id);
int sem_signal(sem_t id);

typedef unsigned long time_t;
int time_sleep(time_t);

const int EOF = -1;
char getc();

void putc(char);
#endif