#include <stdio.h>
#include <stdlib.h>

/*
Ya que en el enunciado no se pedia crear la matriz o implementarla 
junto con los punteros haciendo uso de un ciclo, lo hice manualmente
para evitar complicaciones. Luego, por facilidad, use un ciclo
para imprimir lo solicitado.
*/

int main(){    
    //Creacion de variables. Numeros, matriz y puntero.
    int i,j,num1,num2,num3,num4,num5,num6,num7,num8,num9;    
    int a[3][3];    
    int *ptr; 
    
    //Se asignan los valores correspondientes.
    num1 = 1;
    num2 = 2;
    num3 = 3;
    num4 = 4;
    num5 = 5;
    num6 = 6;
    num7 = 7;
    num8 = 8;
    num9 = 9;

    //Se usa un puntero para agregar los elementos en la matriz
    ptr = &num1;
    a[0][0] = *ptr;

    ptr = &num2;
    a[0][1] = *ptr;

    ptr = &num3;
    a[0][2] = *ptr;

    ptr = &num4;
    a[1][0] = *ptr;

    ptr = &num5;
    a[1][1] = *ptr;

    ptr = &num6;
    a[1][2] = *ptr;

    ptr = &num7;
    a[2][0] = *ptr;

    ptr = &num8;
    a[2][1] = *ptr;

    ptr = &num9;
    a[2][2] = *ptr;


    //Se imprime cada elemento de la matriz junto a su direccion de memoria
    for(i=0;i<3;i++){ 
        for(j=0;j<3;j++){ 
            printf("\t (%d,%p)",a[i][j],ptr); 
            
        } printf("\n");    
    }    

    return 0;

}