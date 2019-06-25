%napomena samo treba popuniti ostala imena i prezimena sa odgovarajucim prezimenima
%lepo poklapa sve ali ima supljine za imena modele itd.. 
clan(X, [X|_]).
clan(X, [G|R]) :- clan(X, R).


% (ime, prezime, vrsta, boja)
drugarice(L) :- L = [ d(_, _, _, _),
				d(_, _, _, _),
				d(_, _, _, _),
				d(_, _, _, _)],
				clan(d(_, ranisavljevic, _, zelena), L),
				clan(d(_, P, cizme, bran), L),
				P \== cugurovic,
				clan(d(milica, P1, sandale, Boja), L),
				P1 \== ranisavljevic, Boja \== crna,
				clan(d(kaca, andolov, O, _), L),
				O \== cizme,
				clan(d(_, _, cipele, BOJA), L),
				BOJA \== pink,
				clan(d(anja, PREZ, _, _), L),
				PREZ \== bogdanovic,
				clan(d(jelena, _, VRSTA, _), L),
				VRSTA \== patike.
