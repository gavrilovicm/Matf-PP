-- ceo deo korena pozivitnog broja
ceodeo x = ceodeo1 x 1

ceodeo1 x a 
	| (a*a) > x = a-1
	| otherwise = ceodeo1 x (a+1)
