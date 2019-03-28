-- ovde su tipovi za a b i c su Floating zato sto je ** definisana za float
tipJednacine a b c
	| a == 0 = "Degenerisana"
	| (b**2 - 4*a*c) > 0 = "Dva resenja"
	| (b**2 - 4*a*c) == 0 = "Jedno resenje"
	| otherwise = "Nema realnih resenja"

{- resenje gde je b tipa Num

tipJednacine a b c
	| a == 0 = "Degenerisana"
	| (b*b - 4*a*c) > 0 = "Dva resenja"
	| (b*b - 4*a*c) == 0 = "Jedno resenje"
	| otherwise = "Nema realnih resenja"

-}

{- preko druge funkcije

d a b c = (b**2 - 4*a*c)
tipJednacine2 a b c
	| a == 0 = "Degenerisana"
	| d a b c > 0 = "Dva resenja"
	| d a b c == 0 = "Jedno resenje"
	| otherwise = "Nema realnih resenja"
-}
