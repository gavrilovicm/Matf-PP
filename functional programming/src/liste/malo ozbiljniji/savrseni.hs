-- Funkcija pravi listu savrsenih brojeva manjih od n.
-- Broj je savrsen kada je jednak sumi svojih delilaca (bez njega samog)

-- moj nacin
savrsen x = [y | y<-[1..x], y == (sumaDel y 1)]

sumaDel n k
	| n == k = 0
	| mod n k == 0 = k + sumaDel n (k+1)
	| otherwise = sumaDel n (k+1)

-- nacin sa vezbi

sav n = [x | x<-[1..n], sum(faktori(x)) == x]
faktori n = [k | k<-[1..n-1], mod n k == 0]

