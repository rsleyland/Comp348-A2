#include  <stdio.h>

int* findmin(int* arr, int size){
    int *min = arr; //set min pointer to first element of array
    int *iter =arr+1; //set iterator to second element of array
    for(;iter<&arr[size]; iter++){  //address of arr[size] will be out of bounds so will iterate until element with address one before this
        if(*iter<*min) min=iter; //compare if value iterator is pointing < value min is pointing at, ->sets min pointer to new value
    }
    return min; //returns pointer to min value after iterating through full array
}

int main(void)
{
    int arr[] = {1, 4, 5, 6, -1, -12};
    int *min =findmin(arr, 6);
    printf("%d", *min);
    return 0;
}
