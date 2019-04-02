-- suma lista = foldr (\a b -> a+b) 0 lista
suma lista = foldr (+) 0 lista
