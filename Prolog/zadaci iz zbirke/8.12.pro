% podeli listu na dve liste pozitivnih i negativnih elemenata. L1 pozitivni L2 negativni
%podeli(L, L1, L2).

podeli([], [], []) :- !.
podeli([G|R], [G|L1], L2) :- G >= 0, podeli(R, L1, L2), !.
podeli([G|R], L1, [G|L2]) :- G < 0, podeli(R, L1, L2), !.
