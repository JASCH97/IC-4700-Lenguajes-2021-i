hije(rodrigo,abelardo).     %rodrigo es hijo de abelardo
hije(analia,rodrigo).   %analia es hija de rodrigo
hije(rocio,analia).  %rocio es hija de analia
hije(joan,rocio).     %joan es hijo de rocio

% X es descendiente de Y, si X es hijo/hija de Y
descendiente(X,Y):-
    hije(X,Y).

% X es descendiente de Y, si X es hijo/hija de un descendiente de Y
descendiente(X,Y):-
    hije(X,Z),
    descendiente(Z,Y).

% x es ancestre de Y, si Y es descendiente de X
ancestre(X,Y):-
    descendiente(Y,X).

ancestre(X,Y):-
    descendiente(Y,Z),
    ancestre(X,Z),!.

