#include <stdio.h>
int main() {  
    int num1,num2;  
    int *ptr;  
    num1 = 1;  
    num2 = 2;  

    printf("num1 = 1; \tel valor de num1 es %d y está almacenado en%p\n",num1,&num1);  
    printf("num2 = 2; \tel valor de num2 es %d y está almacenado en%p\n",num2,&num2);  
    ptr = &num2;  
    printf("ptr = &num2; \tptr apunta a num2 cuyo valor es %d\n",*ptr); 

    *ptr = 7;  
    printf("*ptr = 7 \tptr apunta al valor 7\n");  
    printf("entonces el nuevo valor de num2 es %d\n",num2); 

    num2 = 8;  
    printf("num2 = 8; \tnum2 es ahora 8\n");  
    printf("entonces ptr apunta al entero con valor %d\n",*ptr);  
    
    return 0;
}