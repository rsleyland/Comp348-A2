#include <stdio.h>
#include "selectionsort.h"
#include "selectionsort.h"

int main() {
    int arr[] = {-10, 4, -25, 5, 6, -1};
    selectionsort(arr,6);
    for (int i =0; i<6;i++){
        printf("%d ", arr[i]);
    }
    return 0;
}

