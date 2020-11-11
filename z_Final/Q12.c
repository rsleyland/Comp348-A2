#include <stdio.h> //printf, scanf...
#include <stdlib.h> //malloc, free...
#include "../Q11/selectionsort_v2.h" //includes the selection sort implementation and the findmin func

//Prototype of locally defined findmax func
static int* findmax(int* arr, int size);

int main() {

    int *arr;
    int size =0;
    int number;
    char another;
    //Dynamic allocation of array in memory - checks that != NULL - infers that memory is full
    arr = (int *)malloc(sizeof(int));
    if (arr == NULL) {
        printf("SYSTEM OUT OF MEMORY, PROGRAM CLOSING.\n");
        return 1;
    }
    printf("Enter first number: ");
    scanf("%d", &number);
    arr[size++] = number;
    while (1){
        printf("Enter next number: ");
        scanf("%d", &number);
        arr=(int*)realloc(arr, sizeof(int)*(size+1));
        if (arr == NULL) {
            printf("SYSTEM OUT OF MEMORY, PROGRAM CLOSING.\n");
            return 1;
        }
        arr[size++] = number;
        printf("Add another #? (y/n): ");
        scanf("\n%c", &another);
        if (another=='n') break;
    }

    //Passing pointer to findmin function to selectionsort (Ascending order)
    printf("Ascending Order : ");
    selectionsort(arr,size, findmin);
    for (int i =0; i<size;i++){
        printf("%d ", arr[i]);
    }
    printf("\n");

    //Passing pointer to local findmax function to selectionsort (Descending order)
    printf("Descending Order : ");
    selectionsort(arr,size, findmax);
    for (int i =0; i<size;i++){
        printf("%d ", arr[i]);
    }
    printf("\n");

    printf("Minimum : %d\n", *findmin(arr,size)); //find & print min
    printf("Maximum : %d\n", *findmax(arr,size)); //find & print max

    int sum;
    for (int i =0; i<size;i++){
        sum = sum + arr[i];
    }
    printf("Average : %.2f\n", (float)sum/size);

    //Free up memory allocated to array
    free(arr);

    //All good above - return '0'
    return 0;
}

//statically defined findmax func, cannot be seen outside of this file.
static int* findmax(int* arr, int size){
    int *max = arr; //set max pointer to first element of array
    int *iter =arr+1; //set iterator to second element of array
    for(;iter<&arr[size]; iter++){  //address of arr[size] will be out of bounds so will iterate until element with address one before this
        if(*iter>*max) max=iter; //compare if value iterator is pointing > value max is pointing at, ->sets max pointer to new value
    }
    return max; //returns pointer to max value after iterating through full array
}
