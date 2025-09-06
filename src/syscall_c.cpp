#include "../h/syscall_c.hpp"


void* mem_alloc(size_t size){
    size=((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);//mora u blokovima

    __asm__ volatile("mv a0, %0"::"r"(MEM_ALLOC));
    __asm__ volatile("mv a1, %0"::"r"(size));
    __asm__ volatile("ecall"); // saljemo u ABI da nam u prekidnoj rutini resi posao
    //dobijamo povratnu vrednost u a0, koju treba da vratimo

    void* volatile retAddr;
    __asm__ volatile("mv %0, a0":"=r"(retAddr));

    return retAddr;
}

int mem_free(void* addr){
    __asm__ volatile("mv a0, %0"::"r"(MEM_FREE));
    __asm__ volatile("mv a1, %0"::"r"(addr));
    __asm__ volatile("ecall");
    int volatile retVal;
    __asm__ volatile("mv %0 a0":"=r"(retVal));
    return retVal;
}

size_t mem_get_free_space(){
    __asm__ volatile("mv a0, %0"::"r"(MEM_FREE_SPACE));

    __asm__ volatile("ecall");
    size_t volatile block;
    __asm__ volatile("mv %0, a0":"=r"(block));
    return block;
}

size_t mem_get_largest_free_block(){
    __asm__ volatile("mv a0, %0"::"r"(MEM_LARGEST_BLOCK_SYSCALL));
    __asm__ volatile("ecall");
    size_t volatile block;
    __asm__ volatile("mv %0, a0":"=r"(block));
    return block;
}

int thread_create (thread_t* handle, void(*start_routine)(void*),void* arg){
    //a1=handle,a2=funkc,a3=arg
    //ABI se razlikuje u odnosu na C API, ima dodatan argument - stack_space - a4
    void* addr=mem_alloc(DEFAULT_STACK_SIZE);//stek raste ka nizim adresama, mi
    //alociramo memoriju ka visim, pa poslednja lokacija steka je zapravo prva lokacija
    //zauzete memorije
    if(!addr) return -1;
    __asm__ volatile("mv a0, %0"::"r"(THREAD_CREATE));
    __asm__ volatile("mv a1, %0"::"r"(handle));
    __asm__ volatile("mv a2, %0"::"r"(start_routine));
    __asm__ volatile("mv a3, %0"::"r"(arg));
    __asm__ volatile("mv a4, %0"::"r"(addr));
    __asm__ volatile("ecall");
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    return flag;
}
int thread_exit(){
    __asm__ volatile("mv a0, %0"::"r"(THREAD_EXIT));
    __asm__ volatile("ecall");
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    return flag;
}
void thread_dispatch(){
    __asm__ volatile("mv a0, %0"::"r"(THREAD_DISPATCH));
    __asm__ volatile("ecall");
}

int sem_open (sem_t* handle,unsigned init){
    __asm__ volatile("mv a0, %0"::"r"(SEM_OPEN));
    __asm__ volatile("mv a1, %0"::"r"(handle));
    __asm__ volatile("mv a2, %0"::"r"(init));
    __asm__ volatile("ecall");
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    return flag;
}
int sem_close(sem_t handle){
    __asm__ volatile("mv a0, %0"::"r"(SEM_CLOSE));
    __asm__ volatile("mv a1, %0"::"r"(handle));
    __asm__ volatile("ecall");
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    return flag;
}
int sem_wait(sem_t id){
    __asm__ volatile("mv a0, %0"::"r"(SEM_WAIT));
    __asm__ volatile("mv a1, %0"::"r"(id));
    __asm__ volatile("ecall");
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    return flag;
}
int sem_signal(sem_t id){
    __asm__ volatile("mv a0, %0"::"r"(SEM_SIGNAL));
    __asm__ volatile("mv a1, %0"::"r"(id));
    __asm__ volatile("ecall");
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    return flag;
}

int time_sleep(time_t tajmara){
    __asm__ volatile("mv a0, %0"::"r"(TIME_SLEEP));
    __asm__ volatile("mv a1, %0"::"r"(tajmara));
    __asm__ volatile("ecall");
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    return flag;
}

char getc(){
    __asm__ volatile("mv a0, %0"::"r"(GETC));
    __asm__ volatile("ecall");
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    return flag;
}

void putc(char c){
    __asm__ volatile("mv a0, %0"::"r"(PUTC));
    __asm__ volatile("mv a1, %0"::"r"(c));
    __asm__ volatile("ecall");
}
