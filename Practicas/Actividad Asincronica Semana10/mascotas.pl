persona(marta).
persona(julio).
persona(adriana).

mascota(obsi).
mascota(max).
mascota(akiro).
mascota(duende).
mascota(taz).

tiene_dueno(akiro).
tiene_dueno(duende).
tiene_dueno(max).

podria_adoptar(Persona,Mascota):-
    persona(Persona),
    mascota(Mascota),
    \+tiene_dueno(Mascota).