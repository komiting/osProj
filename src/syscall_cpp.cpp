#include "../h/syscall_cpp.hpp"

void* ::operator new (size_t mem){ return mem_alloc(mem);}
void ::operator delete (void*){}