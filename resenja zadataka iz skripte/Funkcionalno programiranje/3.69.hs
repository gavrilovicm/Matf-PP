-- a)
broj lista = length(filter (\d -> length (cifra d)==0 ) lista) == length(lista)

cifra d = [y | y<-['a'..'z'], y == d]


-- a)
mala lista =  length(filter (\d -> length (slovo d ++ vel d)==0 ) lista) == length(lista)

slovo d = [y | y<-['0'..'9'], y == d]
vel d = [y | y<-['A'..'Z'], y == d]

-- c)

sifruj lista = map (_sifruj) lista

_sifruj lista 
	| broj lista = 'C' : lista ++ ['C']
	| mala lista = 'M' : lista ++ ['M']
	| otherwise = 'O' : lista ++ ['O']


