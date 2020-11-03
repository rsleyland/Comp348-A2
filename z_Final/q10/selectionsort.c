static int* findmin(int* arr, int size){
    int *min = arr; //set min pointer to first element of array
    int *iter =arr+1; //set iterator to second element of array
    for(;iter<&arr[size]; iter++){  //address of arr[size] will be out of bounds so will iterate until element with address one before this
        if(*iter<*min) min=iter; //compare if value iterator is pointing < value min is pointing at, ->sets min pointer to new value
    }
    return min; //returns pointer to min value after iterating through full array
}

void selectionsort(int* arr, int size){
    int count_unsorted = size;
    int a; //increment counter - will not have to loop to the last value as will already be sorted at this point if last to be picked
    for (a=0; a<size; a++){
        int *min = findmin(arr, count_unsorted); //get min
        int temp = *arr; //store contents of pointer which will always be pointing at head of unsorted sublist
        *arr = *min;     //move min at start of unsorted sublist AKA end of sorted sublist
        *min = temp;     //move contents of temp to where we took the min value from
        arr++;           //increment arr pointer to head of unsorted sublist
        count_unsorted--;//keep track of how many elements in unsorted sublist
    }
}


// They are similar but choose which one you like best
void selectionsort(int *arr, int size)
{
  for (int i = 0; i < size; i++)
  {
    int *el = arr + i;
    int *min = findmin(el, size - i);
    int temp = *min;
    *min = *el;
    *(arr + i) = temp;
  }
}
