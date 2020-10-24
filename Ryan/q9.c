#include  <stdio.h>

int* findMin(int* arr, int size)
{
    int min = arr[0];
    int index = 0;
    for (size; size>1; size--){
        if (arr[size-1]<min){
            min = arr[size-1];
            index = size-1;
        }
    }
     return arr[index];
}


int main(void)
{
    int arr[] = {-23, 4, -12, 5, 6, -1, -4};
    int * m =findMin(arr, 7);
    printf("%d\n", m);
    return 0;
}
