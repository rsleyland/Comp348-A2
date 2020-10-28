#include <stdio.h>

int* findmin(int* arr, int size){
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

int main(){
	int arr[] = {1,2,-1,2,5};
	int* min = findmin(arr,5);
	printf("%d", *min);
}

