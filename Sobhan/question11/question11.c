#include "selectionsort2.h"
#include "selectionsort2.h" // included twice

int arr[] = {1, 4, 5, 6, -1 };

int main() {

int i;

selectionsort(arr, 5, NULL);
    for(i = 0; i < 5; i++) printf("%d ", arr[i]);
    return 0;
}

