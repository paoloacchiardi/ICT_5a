#include <stdio.h>
#include <stdlib.h>

int main(){
    int elements, *p, sum = 0;
    printf("Insert the number of elements: ");
    scanf("%d", &elements);
    p = (int*) calloc(elements, sizeof(int)); //allocate space in memory
    if(p == NULL){
        printf("Error! Memory not allocated.");
        exit(0);
    }
    for(int i = 0; i < elements; i++){
        printf("Insert element %d: ", i);
        scanf("%d", p + i ); //mustn't use "*" because scanf requires memory address
        sum += *(p + i);
    }
    printf("Sum: %d", sum);
    free(p); //free the memory space pointed out by p
    return 0;
}
