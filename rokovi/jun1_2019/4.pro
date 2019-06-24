%definisanje promenljivih i domena
%benzin je 2 dolara a dizel 1 dolar.
%rafinerija proizvodi 600.000 galona goriva dnevno

proizvodnja(Vars) :- Vars=[B, D], D :: 1..325000, B :: 150000..600000,
					B+D #=< 600000, 2*B #=< D, B #>= 150000, D #=< 325000,
					labeling([maximize(2*B + D)], Vars),
					K is 2*B+D,
					write('Maksimalna zarada: '), write(K), write(' dolara.'), nl,
					write('Benzina ima: '), write(B), write(' galona.'), nl,
					write('Dizela ima: '), write(D), write(' galona.'), nl.

