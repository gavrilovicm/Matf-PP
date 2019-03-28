-- funkcija za prebacivanje broja iz osnove 'osnova' u dekadni broj
u_dekadnu x osnova
	| x == 0 = 0
	| otherwise = (u_dekadnu (div x 10) osnova)*osnova + (mod x 10)

-- funkcija za prebacivanje broja iz dekadne osnove u osnovu 'osnova'
iz_dekadne x osnova
	| x == 1 = 1
	| otherwise = (iz_dekadne(div x osnova) osnova)*10 + mod x osnova
