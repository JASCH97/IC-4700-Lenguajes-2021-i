#include <stdio.h>
/* 
Joan Alberto Sanchez Chinchilla
2015123867
Primer practica de clase asincronica
*/

int main(){
    int num1, num2, total;     //Se declaran las variables que se van a usar
    printf("Ingrese el primer numero: "); //Se solicita al usuario el primer digito
    scanf("%d",&num1);                  //Se almacena el primer digito en la variable num1
    printf("Ingrese el segundo numero: ");  //Se solicita al usuario el segundo digito
    scanf("%d",&num2);                      //Se almacena el segundo digito en la variable num2

    total = num1 + num2;                    //Se suman ambos numeros
    printf("- La suma de ambos numeros es %d \n",total);  //Se muestra un mensaje con el resultado de la suma
    total = num1 - num2;                    //Se restan ambos numeros
    printf("- La resta de ambos numeros es %d \n",total); //Se muestra un mensaje con el resultado de la resta
    total = num1 * num2;                    //Se multiplican ambos numeros
    printf("- La multiplicacion de ambos numeros es %d \n",total); //Se muestra un mensaje con el resultado de la multiplicacion
    total = num1 / num2;                    //Se dividen ambos numeros
    printf("- La division de ambos numeros es %d \n",total); //Se muestra un mensaje con el resultado de la division
    return 0;  //Se retorna 0

}

//Para compilar/ejecutar el programa en Visual Studio Code se usa ctrl+shift+b

