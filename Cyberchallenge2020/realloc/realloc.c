#include<stdio.h>
#include<stdlib.h>

int main(){
    int n1, n2, *p;
    printf("Enter 1st size: "); //old memory space
    scanf("%d", &n1);
    p = (int*) malloc(n1 * sizeof(int));
    printf("Memory allocated: ");
    for(int k = 0; k < n1; k++){
        printf("\n%p", p+k);
    }
    printf("\nEnter 2nd size: "); //new memory space
    scanf("%d", &n2);
    p = realloc(p, n2 * sizeof(int));
    printf("Memory allocated: ");
    for(int k = 0; k< n2; k++){
        printf("\n%p", p+k);
    }
    free(p);
}
