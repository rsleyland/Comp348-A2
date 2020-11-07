#include <stdio.h>

#ifndef CHECK_DUPLICATE
#define CHECK_DUPLICATE

static int* findmin(int* arr, int size){
	int min = arr[0];
	int index = 0;

	for(int i = 1 ; i < size ; i++){
		if (arr[i] < min)
		{
			min = arr[i];
			index = i;
		}
	}
	return & arr[index]; // to get a pointer, we need to pass the address
}

void selectionsort(int * array, int size){
    
    int temp;
    int * min;
    int * subarray = array;
    

    for(int i = 0 ; i < size ; i++){
        min = findmin((subarray + i), size - i);
        temp = array[i];
        array[i] = * min;
        * min = temp;
    }
}

#endif

