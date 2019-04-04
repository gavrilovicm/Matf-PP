magicniParovi lista = zip lista [magicni y | y<-lista]

magicni broj = product (lista broj)

lista broj
	| broj < 10 = [broj]
	| otherwise = broj `mod` 10 : lista (broj `div` 10)
