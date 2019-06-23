abs(X, X) :- X>0, !.
abs(X, Y) :- Y is -X.
