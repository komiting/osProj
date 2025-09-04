//
// Created by os on 9/1/25.
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::DataBlock* MemoryAllocator::memFreeHead;
void *MemoryAllocator::mem_alloc(size_t size)
{
    if(size <=0 || !memFreeHead) return nullptr;
    MemoryAllocator::DataBlock* curr = memFreeHead;
    // zaokruzi na ceo blok
    if(size%MEM_BLOCK_SIZE){
        size=((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
    }
    while(curr && curr->size<size) curr=curr->next;
    if(!curr) return nullptr;
    if(curr->size> size+sizeof(DataBlock)){
        //ostaje nam blok       <-curr->size odavde pokazuje
        //| datablock metadata |     allocated     | new datablock metadata | remaining size |

        DataBlock* newBlock = (DataBlock*)((char*) curr+sizeof(DataBlock)+size);

        newBlock->size=curr->size-size-sizeof(DataBlock);
        newBlock->prev=curr->prev;
        if(curr->prev){
            curr->prev->next=newBlock;
        }
        else memFreeHead = newBlock;
        newBlock->next=curr->next;
        if(curr->next) curr->next->prev=newBlock;

    }
    else{
        // samo prevezivanje, zauzimamo jos vise memorije jer nam je ostalo <=trazene + sizeof(datablock)
        if(curr->prev) curr->prev->next=curr->next;
        else memFreeHead=curr->next;
        if(curr->next) curr->next->prev=curr->prev;

    }
    curr->next=nullptr;
    curr->prev=nullptr;
    return (void*) ((char*)curr+sizeof(DataBlock));
}
