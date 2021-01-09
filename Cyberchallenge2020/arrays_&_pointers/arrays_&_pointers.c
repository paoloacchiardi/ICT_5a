#include<stdio.h>

int main(){
    //array and pointers
    const int SIZE = 6;
    int i,array[SIZE], sum = 0;
    printf("Insert %d values:", SIZE);
    for(i = 0; i < SIZE; i++){
        scanf("%d", array+i); //array+i = mem address, equal to &array[i], "array" point to 1st element of array
        sum += *(array+i); //* value of array+i mem address
    }
    printf("sum: %d", sum);
}
