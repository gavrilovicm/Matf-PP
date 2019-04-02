pogodak ucesnikL dobitnaL = (length[(a, b) | a<-ucesnikL, b<-dobitnaL, a==b], 7 - length[(a, b) | a<-ucesnikL, b<-dobitnaL, a==b])

nagrada ucesnikL dobitnaL
	| 7 == fst (pogodak ucesnikL dobitnaL) = "Sedmica"
	| fst (pogodak ucesnikL dobitnaL) > 3 = "Utesna nagrada"
	| otherwise = "Vise srece u drugom kolu"
