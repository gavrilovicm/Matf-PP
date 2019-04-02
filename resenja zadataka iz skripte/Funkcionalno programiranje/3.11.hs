tipJednacine ::  Int -> Int -> Int -> [Char]

disk a b c = b*b - 4*a*c

tipJednacine a b c
	| disk a b c == 0 = "Jedno resenje"
	| disk a b c > 0 = "Dva resenja"
	| disk a b c < 0 = "Nema realna resenja"
	| otherwise = "Degenerisana"
