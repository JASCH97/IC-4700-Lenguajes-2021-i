%Laboratorio #3 -> Joan Sanchez Ch -> 2015123867
%Parte b

primer(Cabeza, [Cabeza | _]).

ultimo(Ultimo, [Ultimo]).
ultimo(Ultimo, [_ | Cola]):-
    ultimo(Ultimo,Cola),!.

miembro(Cabeza, [Cabeza | _]).
miembro(Elemento, [_ | Cola]):-
    miembro(Elemento,Cola).
    
indice(Cabeza, [Cabeza | _],0).
indice(Elemento, [_ | Cola],Pos):-
    Cont is Pos-1,
    indice(Elemento,Cola,Cont).  

