-- funkcija identiteta 

ident lista = zip (fst (unzip lista)) (snd (unzip lista))
