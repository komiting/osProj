//
// Created by os on 9/1/25.
//

#ifndef OS1_VEZB07_MEMORYALLOCATOR_HPP
#define OS1_VEZB07_MEMORYALLOCATOR_HPP
#include "../lib/hw.h"
class MemoryAllocator
{
public:
    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);

    static void initMemory(){
        freeMemHead=(FreeBlock*) HEAP_START_ADDR;
        freeMemHead->next=nullptr;
        freeMemHead->prev=nullptr;
        freeMemHead->size=(char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR-sizeof(FreeBlock);
    }

private:
    struct FreeBlock{
        size_t size;
        FreeBlock *prev, *next;
    };
    static FreeBlock* freeMemHead;

};


#endif //OS1_VEZB07_MEMORYALLOCATOR_HPP
