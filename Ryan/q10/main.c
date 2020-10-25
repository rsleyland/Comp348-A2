#include <stdio.h>
#include "selectionsort.h"
#include "selectionsort.h"
int main(void)
{
    int arr[] = {1, 4, 0, -45, 6, -1, -12};
    selectionsort(arr, 7);
    int a;
    for (a=0; a<7; a++) printf("%d ", arr[a]);
    return 0;
}
