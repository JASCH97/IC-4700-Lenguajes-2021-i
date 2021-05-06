factorial(0,1).
factorial(1,1).
factorial(N,F):-
    N>1,
    AN is N-1,
    factorial(AN,AF),
    F is N * AF,!.


fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,F):-
    N>1,
    A is N-1, B is N-2,
    fibonacci(A,AF), fibonacci(B,BF),
    F is AF+BF,!.


suma_rango(I,F,SR):-
    I=:=F,
    SR is F,!.

suma_rango(I,F,SR):-
    I < F,
    A is I,B is I+1,
    suma_rango(B,F,BR),
    SR is A+BR,!.