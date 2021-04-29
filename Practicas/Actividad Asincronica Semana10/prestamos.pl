cuenta(maria,-500000).
cuenta(stephanie,150000).
cuenta(mateo,0).
cuenta(marcela,-120500).
cuenta(sergio,100800).

%Para que se pueda realizar el prestamo el acreedor debe tener un balance mayor al monto a prestar. 
%El deudor debe tener un balance mayor o igual a 0 para que pueda aplicar al prestamo
puede_prestar(Acreedor,Deudor,Monto):-
    cuenta(Acreedor,BalanceAcreedor),
    BalanceAcreedor >= Monto,
    cuenta(Deudor,BalanceDeudor),
    BalanceDeudor >= 0.
