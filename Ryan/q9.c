#include  <stdio.h>

int * findmin(int * arr, int size){
    int * min = arr;
    int * iter = arr+1;
    for(; iter<&arr[size]; iter++){
        if(*iter<*min) min = iter;
    }
    return min;
}

int main(void)
{
    int arr[] = {1, 4, 5, 6, -1, -12};
    int *min =findmin(arr, 6);
    printf("%d\n", *min);
    return 0;
}
