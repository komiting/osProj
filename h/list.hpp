//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZB07_LIST_HPP
#define OS1_VEZB07_LIST_HPP
#include "./MemoryAllocator.hpp"
template<typename T>
class List
{
private:
    struct Elem
    {
        T *data;
        Elem *next;
        uint64 wakeUp;
        Elem(T *data, Elem *next) : data(data), next(next),wakeUp(-1) {}
        Elem(T *data, Elem *next,uint64 wakeup) : data(data), next(next),wakeUp(wakeup) {}
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;

    int getSize() {return size;}
    void addFirst(T *data)
    {
        size_t numOfBlocks = ((sizeof(Elem) + MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE;
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
        elem->data = (void*)data;
        elem->next = nullptr;
        head = elem;
        if (!tail) { tail = head; }
        size++;
    }

    void addSorted(T *data,uint64 wakeUp){
        Elem* curr = head;
        size_t numOfBlocks = ((sizeof(Elem) + MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE;
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
        elem->data = (T*)data;
        elem->next = nullptr;
        elem->wakeUp=wakeUp;
        if(!curr){
            head=tail=elem;
            size++;
            return;
        }
        else if(head->wakeUp>wakeUp){
            elem->next=head;
            head=elem;
            size++;
            return;
        }
        Elem* prev=curr;
        while(curr && curr->wakeUp<=wakeUp) {
            prev=curr;
            curr=curr->next;
        }
        elem->next=curr;
        prev->next=elem;
        if(!curr) tail=elem;
        size++;
    }
    void addLast(T *data)
    {
        size_t numOfBlocks = ((sizeof(Elem) + MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE;
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
        elem->data = (T*)data;
        elem->next = nullptr;
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
            head = tail = elem;
        }
        size++;
    }

    T *removeFirst()
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        T *ret = elem->data;
        MemoryAllocator::mem_free(elem);
        size--;
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
        return head->data;
    }

    uint64 peekFirstTime(){
        if(!head) return 0;
        return head->wakeUp;
    }

    T *removeLast()
    {
        if (!head) { return 0; }

        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;

        T *ret = elem->data;
        MemoryAllocator::mem_free(elem);
        size--;
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
        return tail->data;
    }
};

#endif //OS1_VEZB07_LIST_HPP
