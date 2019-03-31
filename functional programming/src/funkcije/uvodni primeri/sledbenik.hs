-- funkcija vraca za svaki element liste njegovog sledbenika u novoj listi

sledbenik lista = map (+1) lista

-- ako hocemo da primenimo sledbenik samo za prirodne brojeve

sledbenik1 lista = map (+1) (filter (>0) lista)
