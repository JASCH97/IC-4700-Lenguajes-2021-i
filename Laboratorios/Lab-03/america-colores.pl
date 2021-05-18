%Laboratorio #3 -> Joan Sanchez Ch -> 2015123867
%Parte a


%Vecinos de Canada
vecino(canada, alaska).
vecino(canada,estadosUnidos).

%Vecinos de Alaska
vecino(alaska,canada).

%Vecinos de Estados
vecino(estadosUnidos,canada).
vecino(estadosUnidos,mexico).

%Vecinos de Mexico
vecino(mexico,estadosUnidos).
vecino(mexico,guatemala).
vecino(mexico,belice).

%Vecinos de Guatemala
vecino(guatemala,mexico).
vecino(guatemala,belice).
vecino(guatemala,mexico).
vecino(guatemala,elSalvador).
vecino(guatemala,honduras).


%Vecinos de Belice
vecino(belice,mexico).
vecino(belice,guatemala).

%Vecinos de ElSalvador
vecino(elSalvador,guatemala).
vecino(elSalvador,honduras).

%Vecinos de Honduras
vecino(honduras,guatemala).
vecino(honduras,elSalvador).
vecino(honduras,nicaragua).

%Vecinos de Nicaragua
vecino(nicaragua,honduras).
vecino(nicaragua,hostaRica).

%Vecinos de Costa Rica
vecino(costaRica,nicaragua).
vecino(costaRica,panama).

%Vecinos de Panama
vecino(panama,costaRica).
vecino(panama,colombia).

%Vecinos de Colombia
vecino(colombia,panama).
vecino(colombia,venezuela).
vecino(colombia,ecuador).
vecino(colombia,peru).
vecino(colombia,brazil).

%Vecinos de Ecuador
vecino(ecuador,colombia).
vecino(ecuador,peru).

%Vecinos de Venezuela
vecino(venezuela,colombia).
vecino(venezuela,brazil).
vecino(venezuela,guyana).

%Vecinos de Peru
vecino(peru,ecuador).
vecino(peru,brazil).
vecino(peru,colombia).
vecino(peru,bolivia).
vecino(peru,chile).

%Vecinos de Guyana
vecino(guyana,venezuela).
vecino(guyana,surinam).
vecino(guyana,brazil).

%Vecinos de Surinam
vecino(surinam,guyana).
vecino(surinam,guayanaFrancesa).
vecino(surinam,brazil).

%Vecinos de GuayanaFrancesa
vecino(guayanaFrancesa,surinam).
vecino(guayanaFrancesa,brazil).

%Vecinos de Brazil
vecino(brazil,colombia).
vecino(brazil,venezuela).
vecino(brazil,peru).
vecino(brazil,bolivia).
vecino(brazil,guyana).
vecino(brazil,surinam).
vecino(brazil,guayanaFrancesa).
vecino(brazil,paraguay).
vecino(brazil,uruguay).

%Vecinos de Chile
vecino(chile,peru).
vecino(chile,bolivia).
vecino(chile,argentina).

%Vecinos de Bolivia
vecino(bolivia,peru).
vecino(bolivia,chile).
vecino(bolivia,argentina).
vecino(bolivia,paraguay).
vecino(bolivia,brazil).

%Vecinos de Paraguay
vecino(paraguay,bolivia).
vecino(paraguay,brgentina).
vecino(paraguay,brazil).

%Vecinos de Argentina
vecino(argentina,bolivia).
vecino(argentina,chile).
vecino(argentina,paraguay).
vecino(argentina,uruguay).
vecino(argentina,brazil).

%Vecinos de Uruguay
vecino(uruguay,argentina).
vecino(uruguay,brazil).


%Vecinos de Haiti
vecino(haiti,repDominicana).

%Vecinos de RepDominicada
vecino(repDominicana,haiti).


%Orden de colores:
%color(rojo).
%color(azul).
%color(verde).
%color(amarillo).


%Lista con todos los paises:
%[bahamas,galapagos,groenlandia,islasMalvinas,puertoRico,cuba,alaska,canada,estadosUnidos,mexico,belice,guatemala,elSalvador,honduras,nicaragua,costaRica,panama,colombia,venezuela,guyana,surinam,GuayanaFrancesa,brazil,uruguay,argentina,paraguay,bolivia,chile,peru,ecuador,haiti,repDominicana]

%los primeros 6 paises pueden ir de cualquier color basicamente. Igualmente aplicar orden a ver que tal

colorear(bahamas,rojo).
colorear(galapagos,azul).
colorear(groenlandia,verde).
colorear(islasMalvinas,amarillo).
colorear(puertoRico,rojo).
colorear(cuba,azul).








































