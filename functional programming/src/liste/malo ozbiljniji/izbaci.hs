-- funkcija koja izbacuje k-ti element iz liste l

izbaci k l
	| k < 0 = l
	| otherwise = [x | x<-l, x /= k]



