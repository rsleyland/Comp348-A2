#include "selectionsort2.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int* findmax(int * array, int size){
    int max = array[0];
    int index = 0;

    for(int i = 1 ; i < size ; i++){
        if (array[i] > max){
            max = array[i];
            index = i;
        }
    }

    return & array[index];
}

int main(){
    int size;
    int sum = 0;
    double avg;
    double sigma_dev = 0;
    double stnd_dev;
    
    
    // Request the size of the array and build it the array
    printf("Please enter the size of the array: ");
    scanf("%d",&size);
    if(size < 1){
        printf("ERROR: SIZE TOO SMALL! GOODBYE!");
        return 1;
    }

    // allocating memory
    int * array = malloc(size*sizeof(int));
    if (array == NULL){
        printf("Error. Out of memory.");
        return 1;
    }

    for(int i = 0 ; i < size ; i++){
        printf("\nEnter #%d: ",i);
        scanf("%d", (array + i));
    }
    
    // display the default array, in increasing order, and in decreasing order
    printf("\nThe current array: ");
    for(int i = 0; i < size; i++) printf("%d ", *(array + i));

    selectionsort(array, size, NULL);
    printf("\nThe array in increasing order: ");
    for(int i = 0; i < size; i++) printf("%d ", *(array + i));

    selectionsort(array, size, &findmax);
    printf("\nThe array in decreasing order: ");
    for(int i = 0; i < size; i++) printf("%d ", *(array + i));

    // finding average
    for(int i = 0 ; i < size ; i++)
        sum += *(array + i);
    
    avg = sum*1.0/size;
    printf("\nAverage = %.2f", avg);

    // finding population standard deviation = sqrt(sigma((x-avg)^2)/size)

    for(int i = 0 ; i < size ; i++)
        sigma_dev += pow((*(array + i) - avg),2);
    
    stnd_dev = sqrt(sigma_dev/size);
    printf("\nStandard Deviation = %.2f",stnd_dev);
    printf("\n\nGoodbye");
    
    
    // freeing array
    free(array);
    array = NULL;

    return 0;
}

