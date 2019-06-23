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


% proizvod prvih N prirodnih brojeva
proizvod(1, 1):-!. %cut operator ne mora da stoji..
proizvod(N, S) :- N>1, N1 is N-1, proizvod(N1, S1), S is S1*N.


% proizvod neparnih
proizvodNeparnih(1, 1):-!.
proizvodNeparnih(N, S):-N>1, N mod 2 =:= 1, N1 is N-2, proizvodNeparnih(N1, S1), S is  S1*N, !.
proizvodNeparnih(N, S):-N mod 2 =:= 0, N1 is N-1, proizvodNeparnih(N1, S).


% cifre broja
cifra(0, nula).
cifra(1, jedan).
cifra(2, dva).
cifra(3, tri).
cifra(4, cetiri).
cifra(5, pet).
cifra(6, sest).
cifra(7, sedam).
cifra(8, osam).
cifra(9, devet).

cifre(N) :- N<10, cifra(N, K), write(K), nl, !.
cifre(N) :- N1 is N div 10, cifre(N1), N2 is N mod 10, cifra(N2, P), write(P), nl.
