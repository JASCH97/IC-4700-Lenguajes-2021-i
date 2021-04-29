%ninos y ninas
nino(juan,8).
nino(maria,9).
nino(carlos,10).
nino(stephanie,11).
nino(alvaro,12).
nino(julia,13).
nino(pedro,6).
nino(marta,9).
nino(joan,10).
nino(laura,11).
nino(jose,8).
nino(daniela,4).
nino(lucas,3).
nino(rocio,5).
nino(sergio,7).
nino(tania,12).

%Las restricciones de edad son inventadas con fines de hacer las pruebas correspondientes
%videojuegos
videojuego(marioKart,10).
videojuego(residentEvil4,16).
videojuego(fallguys,6).
videojuego(fifa,12).
videojuego(fortnite,5).
videojuego(gtaV,18).
videojuego(animalcrossing,10).
videojuego(mortalKombat,15).
videojuego(dragonBallZ,12).
videojuego(ageOfEmpires,9).


%Regla que verifica si un nino o nina puede jugar un videojuego segun su edad y la restriccion
%etaria del videojuego
puede_jugar(Nino,Juego):-
    nino(Nino,Edad),
    videojuego(Juego,Restriccion),
    Edad >= Restriccion.

    