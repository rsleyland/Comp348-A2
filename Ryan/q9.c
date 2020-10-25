#include  <stdio.h>

int* findmin(int* arr, int size){
    int *min = arr; //set min pointer to first element of array
    int *iter =arr+1; //set iterator to second element of array
    for(;iter<&arr[size]; iter++){  //address of arr[size] will be out of bounds so will iterator until one before this
        if(*iter<*min) min=iter; //compares if value iterator is pointing at is less than value min is pointing at, ->sets min pointer to new value
    }
    return min; //returns pointer to min value after iterating through full array
}

int* findmin2(int arr[], int size){ //works same as above but use int[] as param rather than auto casting int[] to int*
    int *min = &arr;
    int *iter =&arr[1];
    for(;iter<&arr[size]; iter++){
        if(*iter<*min) min=iter;
    }
    return min;
}

int main(void)
{
    int arr[] = {1, 4, 5, 6, -1, -12};
    int *min =findmin(arr, 6);
    printf("%d", *min);
    return 0;
}
