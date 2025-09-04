//
// Created by os on 9/1/25.
//

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeBlock* MemoryAllocator::freeMemHead;
void *MemoryAllocator::mem_alloc(size_t size)
{
    if(size <=0 || !freeMemHead) return nullptr;
    MemoryAllocator::FreeBlock* curr = freeMemHead;
    // zaokruzi na ceo blok
    if(size%MEM_BLOCK_SIZE){
        size=((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
    }
    while(curr && curr->size<size) curr=curr->next;
    if(!curr) return nullptr;
    if(curr->size> size+sizeof(FreeBlock)){
        //ostaje nam blok       <-curr->size odavde pokazuje
        //| datablock metadata |     allocated     | new datablock metadata | remaining size |

        FreeBlock* newBlock = (FreeBlock*)((char*) curr + sizeof(FreeBlock) + size);

        newBlock->size=curr->size-size-sizeof(FreeBlock);
        newBlock->prev=curr->prev;
        //size je velicina koja je trazena da se zauzme, zaokruzena na ceo broj blokova, kada budemo oslobadjali sa adrese curr, oslobodicemo tacno koliko treba
        curr->size=size;
        if(curr->prev){
            curr->prev->next=newBlock;
        }
        else freeMemHead = newBlock;
        newBlock->next=curr->next;
        if(curr->next) curr->next->prev=newBlock;

    }
    else{
        // samo prevezivanje, zauzimamo jos vise memorije jer nam je ostalo <=trazene + sizeof(datablock)
        //ne menjamo curr->size zato sto ceo curr blok alociramo, pa kada ga budemo oslobadjali, oslobodicemo ceo
        if(curr->prev) curr->prev->next=curr->next;
        else freeMemHead=curr->next;
        if(curr->next) curr->next->prev=curr->prev;
    }
    curr->next=nullptr;
    curr->prev=nullptr;
    return (void*) ((char*)curr+sizeof(FreeBlock));
}

int MemoryAllocator::mem_free(void *addr)
{
    if(!addr) return -1;
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;

    FreeBlock* blk = (FreeBlock*) ((char*)addr-sizeof(FreeBlock));
    blk->next=nullptr;
    blk->prev=nullptr;
    FreeBlock* curr = nullptr;
    if(!freeMemHead){
        //prvi slobodni
        freeMemHead=blk;
        return 0;
    }
    if((char*) blk < (char*) freeMemHead){
        //blk je pre heada, obradjujemo na kraju
        curr=nullptr;
    }
    else
    {
        for (curr = freeMemHead; curr->next != nullptr && (char *) curr->next < (char *) blk; curr = curr->next);
        // curr|?|blk|?| curr->next
    }
    //gledamo da li mozemo spojiti sa sledecim
    if(curr && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)blk){
        // |curr|blk|
        curr->size+=sizeof(FreeBlock)+blk->size;
        if(curr->next && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)curr->next){
            //|curr |curr->next|
            curr->size+=sizeof(FreeBlock)+curr->next->size;
            curr->next=curr->next->next;
            if(curr->next) curr->next->prev=curr;
        }
        return 0;
    }

    FreeBlock* nextBlock = curr ? curr->next : freeMemHead;
    if(nextBlock && (char*)blk+sizeof(FreeBlock)+blk->size==(char*)nextBlock){
        // |curr|used|blk|curr->next|  ILI |blk|freeMemHead|
        blk->size+=sizeof(FreeBlock)+nextBlock->size;
        blk->next=nextBlock->next;
        if(nextBlock->next) nextBlock->next->prev=blk;
        blk->prev=nextBlock->prev;
        if(nextBlock->prev) nextBlock->prev->next=blk;
        else freeMemHead=blk;
        return 0;
    }
    //nema potrebe za spajanjem, samo dodajemo blok;
    blk->prev=curr;
    blk->next=curr?curr->next:freeMemHead;
    if(blk->next) blk->next->prev=blk;
    if(curr) curr->next=blk;
    else freeMemHead=blk;
    return 0;
}
