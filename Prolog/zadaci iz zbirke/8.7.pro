% suma cifara prirodnog broja
sumaCifara(N, N) :- N<10, !.
sumaCifara(N, SC) :- N1 is N div 10, sumaCifara(N1, S), SC is S+(N mod 10).


% broj cifara prirodnog broja
brCifara(N, 1) :- N < 10, !.
brCifara(N, BC) :- N1 is N div 10, brCifara(N1, BRC), BC is BRC+1.


% maks dva broja
maks(A, B, A):-A>=B, !.
maks(A, B, B):-B>A.

% maksimalna cifra prirodnog broja N
maksCifra(N, N) :- N<10, !.
maksCifra(N, MC) :- N>=10, N1 is N div 10, maksCifra(N1, M), K is N mod 10, maks(M,K,MAKS), MC is MAKS.


% suma kvadrata prvih N prirodnih brojeva
sumaKvadrata(1, 1) :- !.
sumaKvadrata(N, SK) :- N1 is N-1, sumaKvadrata(N1, S), SK is S + N*N.


% faktorijel prirodnog broja
fak(1, 1) :- !.
fak(N, F) :- N1 is N-1, fak(N1, FF), F is FF * N.


% suma pravih delilaca broja N
sumaDel(N, S) :- sdel(N, N-1, S).

sdel(N, 1, 0) :- !.
sdel(N, K, S) :- N mod K =:= 0, K1 is K-1, sdel(N, K1, S1), S is S1 + K, !.
sdel(N, K, S) :- N mod K =\= 0, K1 is K-1, sdel(N, K1, S1), S is S1, !.
