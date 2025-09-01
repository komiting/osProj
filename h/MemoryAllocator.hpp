//
// Created by os on 9/1/25.
//

#ifndef OS1_VEZB07_MEMORYALLOCATOR_HPP
#define OS1_VEZB07_MEMORYALLOCATOR_HPP
#include "../lib/hw.h"
class MemoryAllocator
{
public:
    void* mem_alloc(size_t size);
    int mem_free(char* addr, size_t size);
private:
    struct DataBlock{
        size_t size;
        DataBlock *prev, *next;
    };
};


#endif //OS1_VEZB07_MEMORYALLOCATOR_HPP
