#include  <stdio.h>

int* findMin(int* arr, int size);

int main(void)
{
    int arr[] = {2, 4, -12, 5, 6, -1, -4};
    int * m =findMin(arr, 7);
    printf("%d\n", *m);
    return 0;
}

int* findMin(int* arr, int size)
{
    int min = 0;
    for (size; size>1; size--){
        if (arr[size-1]<arr[min]){
            min = size-1;
        }
    }
     return &arr[min];
}
