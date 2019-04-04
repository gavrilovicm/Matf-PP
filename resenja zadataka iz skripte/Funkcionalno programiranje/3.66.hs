-- listaUPar lista = unzip lista
-- e sad implementacija runcog unzip-a

listaUPar lista = (prvi lista, drugi lista)

prvi lista = map (fst) lista
drugi lista = map (snd) lista
