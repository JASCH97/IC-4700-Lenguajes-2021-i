#include <stdio.h>
#include <stdlib.h>

//Creacion de la estructura Nodo que representa el arbol binario
typedef struct Arbol {
    char letra;
    struct Arbol *izq;
    struct Arbol *der;
    struct Lista *cabeza;        //inicio de la lista enlazada
}Arbol; 

//estructura de la lista
typedef struct Lista{
    char *palabra;
    char *significado;
    struct Lista *sig;
}Lista;


//Funcion para inicializar la lista y guardarle espacio
Lista *nuevaLista(){
    size_t tamanioLista = sizeof(struct Lista);
    Lista *nuevaL= (struct Lista *) malloc(tamanioLista);

    nuevaL->palabra = NULL;
    nuevaL->significado = NULL;
    nuevaL->sig = NULL;
    return nuevaL;
}

//Funcion para inicializar el arbol y guardarle espacio
Arbol *nuevoNodoArbol(struct Lista *cabezaLista) {
    // Se solicita la memoria
    size_t tamanioNodo = sizeof(struct Arbol);
    struct Arbol *nuevoNodo = (struct Arbol *) malloc(tamanioNodo);

    nuevoNodo->letra = NULL;
    nuevoNodo->izq = nuevoNodo->der = NULL;
    nuevoNodo->cabeza = cabezaLista;
    return nuevoNodo;
}





//funcion que agrega datos nuevos al diccionario cuando ya existia un nodo con una letra
void agregarNuevosDatosLista(Arbol *a,char l,char *p,char *s){
    
    while(a->letra != l){       //Luego de este while estoy en el nodo del arbol con la letra ingresada
        if(l > a->letra){
            a = a->der;
        }
        else{
            a = a->izq;
        }
    }

    Lista *temp = a->cabeza;        //Con temp me muevo al ultimo elemento de la lista
    while(temp->sig != NULL){
        temp = temp->sig;
    }
    Lista *nuevaInfo = nuevaLista();
    nuevaInfo->significado = s;             //con nuevaInfo de tipo lista, sustituyo el elemento siguiente del ultimo
    nuevaInfo->palabra = p;
    temp->sig = nuevaInfo;
    nuevaInfo->sig = NULL;                  //como este es ahora el ultimo elemento, entonces debe apuntar a null
    printf("%s",nuevaInfo->palabra);
}

//si no existe la letra se agrega un nuevo nodo al arbol con dicha letra y su respectiva palabra y significado
void agregarNuevoNodoArbol(Arbol *a,char l,char *p,char *s){
    // Si la letra esta despues en el abecedario, entonces se va a la derecha
    if (l > a->letra) {
        //Si no hay nada a la derecha se crea un nuevo nodo
        if (a->der == NULL) {
            struct Lista *lista = nuevaLista();
            a->der = nuevoNodoArbol(lista);
            a->der->letra = l;
            a->der->cabeza = lista;
            lista->palabra = p;
            lista->significado = s;
            lista->sig = NULL;
        } else {
            // Si la derecha ya está ocupada se invoca de nuevo la funcion desde esa posicion
            agregarNuevoNodoArbol(a->der, l,p,s);
        }
    // Si la letra esta antes, se va a la izquierda y se repite el proceso anterior
    } else {
        if (a->izq == NULL) {
            struct Lista *lista = nuevaLista();
            a->izq = nuevoNodoArbol(lista);
            a->izq->letra = l;
            a->izq->cabeza = lista;
            lista->palabra = p;
            lista->significado = s;
            lista->sig = NULL;
        } else {
            agregarNuevoNodoArbol(a->izq,l,p,s);
        }
    }

}


//funcion que me dice si la letra existe o no en el arbol
int existeLetra(char letras[30],char letra){     //esta funcion retorna 1 si la letra esta y -1 de lo contrario
    int i;
    for(i=0;i< 30;i=i+1){
        if(letra == letras[i]){
            //printf("letra si ta");
            return 1;
        }
    }
    //printf("letra no ta :c");
    return -1;
        
}

void contenido(struct Lista * l){
    while(l->sig != NULL){
        printf("%s - %s ",l->palabra,l->significado);
        l = l->sig;
    }
}

//Recorrido inorden. Primero se recorre el lado izquierdo del arbol, se pasa por la raiz y luego se va al lado derecho.
void inorden(struct Arbol *nodo) {
    if (nodo != NULL) {
        inorden(nodo->izq);
        printf("%s = %s", nodo->cabeza->palabra,nodo->cabeza->significado);
        contenido(nodo->cabeza);
        inorden(nodo->der);
    }
}


void menuPrincipal(Arbol *arbol,char *letras,int cont){
    int opcion;
    char palabra[100],significado[200];
    char letra;



    printf("      Bienvenido al menu del programa. \n");
    printf( "\n   1. Agregar palabra y significado.");
    printf( "\n   2. Buscar significado de una palabra.");
    printf( "\n   3. Imprimir el diccionario.");
    printf( "\n   4. Salir." );
    printf( "\n\n   -> ");

    scanf( "%d", &opcion );

        

    switch ( opcion )
    {
        case 1: 
                printf( "\n   Introduzca la palabra: ");
                scanf("%s", &palabra );
                printf("\n   Introduzca el significado: ");
                scanf("%s", &significado);
                printf("\n");
                letra = palabra[0];
                //printf("%c",letra);
                if(existeLetra(letras,letra) == -1){
                    agregarNuevoNodoArbol(arbol,letra,palabra,significado);
                    letras[cont] = letra;
                    cont = cont +1;
                    //inorden(arbol);
                } 
                else{
                    agregarNuevosDatosLista(arbol,letra,palabra,significado);
                }
                
                menuPrincipal(arbol,letras,cont); 
                break;

        //case 2: printf( "\n   Introduzca la palabra de la cual busca el significado: ");
               // scanf( "%s", palabra);
               // letra = palabra[0];
                //buscarSignificado(arbol,letra,palabra);
                //menuPrincipal(arbol,letras,cont);
                //break;

        
        case 3: printf("\nImprimiendo diccionario...\n\n");
                //imprimirDiccionario(arbol);
                inorden(arbol);
                menuPrincipal(arbol,letras,cont);
                break;


        case 4: exit(0);

        default:
        printf("Opcion invalida. Intente nuevamente.");
        menuPrincipal(arbol,letras,cont);
    }

}


void agregarDatosPrimerNodoArbol(Arbol *a,char l,char *p,char *s){ //l = letra, p = palabra, s = significado, a = arbol
    //printf("palabra %s - Letra %c - Significado %s\n all gud",p,l,s);
    a->letra = l;
    a->cabeza->palabra = p;
    a->cabeza->significado = s;
    a->cabeza->sig = NULL;
    //printf("%c %s %s %s",a->letra,a->cabeza->palabra,a->cabeza->significado,a->cabeza->sig);
    char letras[30]; //arreglo que va a contener las letras utilizadas en el arbol
    int i;
    for(i=0;i<30;i++){
        letras[i] = '-';
    }
    letras[0] = l;
    menuPrincipal(a,letras,1);

}




void menuInicial(Arbol *arbol){
    int opcion;
    char palabra[100],significado[200];
    char letra;



    printf("      Bienvenido al menu del programa. \n");
    printf( "\n   1. Agregar palabra y significado.");
    printf( "\n   2. Buscar significado de una palabra.");
    printf( "\n   3. Imprimir el diccionario.");
    printf( "\n   4. Salir." );
    printf( "\n\n   -> ");

    scanf( "%d", &opcion );

        

    switch ( opcion )
    {
        case 1: 
                printf( "\n   Introduzca la palabra: ");
                scanf("%s", &palabra );
                printf("\n   Introduzca el significado: ");
                scanf("%s", &significado);
                printf("\n");
                letra = palabra[0];
                agregarDatosPrimerNodoArbol(arbol,letra,palabra,significado);
                break;

        case 2: printf( "\n   El diccionario aun no cuenta con ninguna palabra.Intente nuevamente\n");
                menuInicial(arbol);
                break;

        
        case 3: printf( "\n   El diccionario aun no cuenta con ninguna palabra.Intente nuevamente\n");
                menuInicial(arbol);
                break;


        case 4: exit(0);

        default:
        printf("Opcion invalida. Intente nuevamente.");
        menuInicial(arbol);
    }

}


int main(void) {
    Lista *lista = nuevaLista();
    Arbol *arbol = nuevoNodoArbol(lista);
    menuInicial(arbol);
    

    //FALTA BUSCAR SIGNIFICADO DE PALABRA (OPCION 2)
    //FALTA IMPRIMIR DICCIONARIO (OPCION 3)

    

}


