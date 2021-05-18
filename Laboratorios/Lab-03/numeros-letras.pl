%Laboratorio #3 -> Joan Sanchez Ch -> 2015123867
%Parte b

numero(0) :- 
    write('cero').

numero(1) :- 
    write('uno').

numero(2) :- 
    write('dos').

numero(3) :- 
    write('tres').

numero(4) :- 
    write('cuatro').

numero(5) :- 
    write('cinco').

numero(6) :- 
    write('seis').

numero(7) :- 
    write('siete').

numero(8) :- 
    write('ocho').

numero(9) :- 
    write('nueve').
    

escribir_con_letras(N):- 
    number_chars(N,C), 
    imprimir(C).

imprimir([C]):- 
    numero(C),!.

imprimir([C|Cola]):- 
    numero(C),
    write('-'),
    imprimir(Cola).


    
    


    

