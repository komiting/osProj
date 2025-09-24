//
// Created by os on 9/23/25.
//

#include "modif_MatrixMax.hpp"
#include "../h/syscall_cpp.hpp"
#include "printing.hpp"
struct matrixField{
    int** matrix;
    int max;
};

class rowAdder : public Thread {
    matrixField* matrix;
    Semaphore* sem;
    int rowVal;
public:
    rowAdder(matrixField* matrix,Semaphore* sem, int row) : Thread(), matrix(matrix), sem(sem), rowVal(row) {};
    void run() override {

        int max=matrix->matrix[rowVal][0];
        for(int i=1;i<10;i++){

            max = matrix->matrix[rowVal][i]>max?matrix->matrix[rowVal][i]:max;
        }
        matrix->max = matrix->max > max ? matrix->max : max;
        sem->signal();
    }
};

void modif_MatrixMax(){

    Semaphore* waitForAll = new Semaphore(0);

    Thread* threads[10];

    matrixField* base = new matrixField;
    base->max=0;
    base->matrix = new int*[10];
    for(int i =0 ; i < 10 ; i++){
        base->matrix[i] = new int[10];
        for(int j = 0 ; j < 10 ; j++)
        {
            base->matrix[i][j] = i+j;
        }
    }
    base->matrix[3][4] = 11;

    for(int i =0; i < 10 ;i++){
        threads[i] = new rowAdder(base,waitForAll,i);
    }
    for(auto &thread : threads) thread->start();

    Thread::dispatch();
    for(int i = 0 ; i < 10; i++){
        waitForAll->wait();
    }
    delete waitForAll;

    printString("Gotovo! Max je: ");
    printInt(base->max);
    printString("\n");

}