%maksimum dva broja
maksimum(A, B, A):- A >= B, !.
maksimum(A, B, B):- B > A.


% suma prvih N brojeva
suma(1, 1).
suma(N, S) :- N>1, K is N-1, suma(K, S1), S is S1 + N.


% suma parnih brojeva
sumaparnih(2, 2).
sumaparnih(N, S) :- N>2, N mod 2 =:= 0, N1 is N-1, sumaparnih(N1, S1), S is S1 + N.
sumaparnih(N, S) :- N1 is N-1, sumaparnih(N1, S).


% proizvod 


% proizvod neparnih


% cifre broja
