-- Funkcija koja generise listu parnih celih brojeva iz segmenta [a, b]

-- prvo i najruznije resenje
parni a b
	| b < a = []
	| (b == a) && (mod a 2 == 0) = [a]
	| (b == a) = []
	| (mod a 2 == 0) = [a] ++ parni (a+2) b
	| otherwise = parni (a+1) b

-- mnogo lepse resenje i lepsi zapis
parni1 a b = [x | x <- [a..b], mod x 2 == 0]

-- jos elegantnije koristeci funkciju even 

parni2 a b = [x | x <- [a..b], even x]


-- Funkcija koja generise listu neparnih celih brojeva iz segmenta [a, b]
neparni a b = [x | x<-[a..b], odd x]
