-- Funkcija bezbedanRep koja ako je lista prazna ne izbaci exception kao tail vec da vrati praznu listu

-- ternarni operator
bezbedanRep lista = if (null lista) then [] else tail(lista)

-- preko sablona liste
bezbedanRep2 [] = []
bezbedanRep2 (x:xs) = xs
