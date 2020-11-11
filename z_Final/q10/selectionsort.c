static int * findmin(int * arr, int size){
    int * min = arr;
    int * iter = arr+1;
    for(; iter<&arr[size]; iter++){
        if(*iter<*min) min = iter;
    }
    return min;
}

void selectionsort(int* arr, int size) {
    int count_unsorted = size;
    for (int a = 1; a < size; a++) {
        int *min = findmin(arr, count_unsorted); //get min
        int temp = *arr; //store contents of pointer which will always be pointing at head of unsorted sublist
        *arr = *min;     //move min at start of unsorted sublist AKA end of sorted sublist
        *min = temp;     //move contents of temp to where we took the min value from
        arr++;           //increment arr pointer to head of unsorted sublist
        count_unsorted--;//keep track of how many elements in unsorted sublist
    }
}
