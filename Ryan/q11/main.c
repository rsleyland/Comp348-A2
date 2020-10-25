#include <stdio.h>
#include "selectionsort.h"
int main(void)
{
    int* (*ptrnull) (int*, int)=NULL;
    int* (*ptrmin) (int*, int)=&findmin;
    int* (*ptrmax) (int*, int)=&findmax;
    int arr[] = {1, 4, -45, 6, -1, -12, 34};
    selectionsort(arr, 7, ptrnull);
    int a;
    for (a=0; a<7; a++) printf("%d ", arr[a]);
    printf("\n");
    selectionsort(arr, 7, ptrmin);
    for (a=0; a<7; a++) printf("%d ", arr[a]);
    printf("\n");
    selectionsort(arr, 7, ptrmax);
    for (a=0; a<7; a++) printf("%d ", arr[a]);
    return 0;
}
