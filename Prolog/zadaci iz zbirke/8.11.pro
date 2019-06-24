% uvod u liste

% da li lista sadrzi element
sadrzi(X, [X|_]) :- !.
sadrzi(X, [G|R]) :- sadrzi(X, R).

%drugi nacin
sadrzii(X, [G|R]) :- X == G; sadrzi(X, R).


%racunanje duzine liste
duzina([], 0) :- !.
duzina([G|R], L) :- duzina(R, L1), L is L1 + 1.


%suma elemenata liste brojeva
suma([], 0) :- !.
suma([G|R], S) :- suma(R, S1), S is S1 + G.


%aritmeticka sredina liste
arsr([], 0) :- !.
arsr([G|R], AS) :- duzina([G|R], N), N =\= 0, suma([G|R], S), AS is S/N.


%ucitavanje proizvoljne liste elemenata
ucitaj(N, _) :- N<0, !.
ucitaj(0, []):-!.
ucitaj(N, [G|R]) :- write('ucitaj element '), read(G), nl, N1 is N-1, ucitaj(N1, R).


%dodaj element na pocetak liste
dodajNaPoc([], X, [X]) :- !.
dodajNaPoc(L, X, [X|L]) :- !.



%dodaj na kraj
dodajNaKraj([], X, [X]) :- !.
dodajNaKraj([G|R], X, L1) :- dodajNaKraj(R, X, L), L1 is [G|L].


%obrisi prvi
obrisiPrvi([], []) :- !.
obrisiPrvi([G|R], R).


%obrisi poslednji
obrisiPoslednji([X], []) :- !.
obrisiPoslednji([G|R], [G|L1]) :- obrisiPoslednji(R, L1).



%brisi sva pojavljivanja X u listi
brisi([], _, []) :- !.
brisi([X|R], X, L1) :- brisi(R, X, L1), !.
brisi([G|R], X, [G|L1]) :- G \== X, brisi(R, X, L1).



%brisi samo prvo pojavljivanje elementa X
brisiPrvo([], _, []) :- !.
brisiPrvo([X|R], X, R) :- !.
brisiPrvo([G|R], X, L) :- brisiPrvo(R, X, L1), L is [G|L1].



% brise k-ti element liste
brisiKati([], _, []) :- !.
brisiKati([G|R], 1, R) :- !.
brisiKati([G|R], K, NL) :- K1 is K-1, brisiKati(R, K1, L), NL is [G|L].
