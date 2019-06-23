% provera da li je godina prestupna
prestupna(X) :- X mod 4 =:= 0, X mod 100 =\= 0.
prestupna(X) :- X mod 400 =:= 0.



% broj dana prosledjenog meseca
brdana(januar, _, 31).
brdana(februar, X, 28) :- not(prestupna(X)), !.
brdana(februar, X, 29) :- prestupna(X).
brdana(mart, _, 31).
brdana(april, _, 30).
brdana(maj, _, 31).
brdana(jun, _, 30).
brdana(jul, _, 31).
brdana(avgust, _, 31).
brdana(septembar, _, 30).
brdana(oktobar, _, 31).
brdana(novembar, _, 30).
brdana(decembar, _, 31).
