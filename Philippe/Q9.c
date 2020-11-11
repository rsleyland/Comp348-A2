#include <stdio.h>

int *findmin(int *arr, int size)
{
  int *min = arr;
  int *ptr = arr + 1;

  for (int i = 1; i < size; i++)
  {
    if (*min > *ptr)
    {
      min = ptr;
    }
    ptr++;
  }

  return min;
}

int main()
{
  int arr[] = {12, 4, 5, 6, 10, 90};
  int *min = findmin(arr, 5);

  printf("%d", *min);

  return 0;
}