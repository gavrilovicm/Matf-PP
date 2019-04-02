sufiksi lista
	| null lista = [[]]
	| otherwise = lista : sufiksi(tail lista)
