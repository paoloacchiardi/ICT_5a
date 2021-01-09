#include<stdio.h>
void swap(int *n1, int *n2);
void addOne(int *p);

int main(){
    //functions and pointers
    //1st function
    int num1, num2;
    printf("Insert int value: ");
    scanf("%d", &num1);
    printf("Insert int value: ");
    scanf("%d", &num2);
    swap(&num1, &num2);
    printf("num1 value: %d\nnum2 value: %d", num1, num2);
    
    //2nd function
    int i;
    printf("\nInsert i value: ");
    scanf("%d", &i);
    int *p = &i;
    addOne(p);
    printf("\nvalue of \"i\": %d", i);
    return 0;
}

void swap(int *n1, int *n2){
    int temp = *n1;
    *n1 = *n2;
    *n2 = temp;
}

void addOne(int *p){
    (*p)++;
}