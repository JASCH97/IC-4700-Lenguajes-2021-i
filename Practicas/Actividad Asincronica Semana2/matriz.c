#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(){    
    int rand_num,i,j,filas,columnas;    
    int a[10][10];    
    printf("Ingrese el número de filas deseado: ");    
    scanf("%d", &filas);    
    printf("Ingrese el número de columnas deseado:");    
    scanf("%d",&columnas);    
    for(i=0;i<filas;i++){ 
        for(j=0;j<columnas;j++){ 
            a[i][j]= rand() % 10; 
            printf("\t %d",a[i][j]); 
            
        } printf("\n");    
    }    
    return 0;

}