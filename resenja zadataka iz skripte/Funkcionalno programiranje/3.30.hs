savrsen n = [y | y<-[1..n], sav y]

sav n = (n == sum (delioci n 1))

delioci n i
	| n == i = []
	| mod n i == 0 = i : (delioci n (i+1))
	| otherwise = delioci n (i+1)
