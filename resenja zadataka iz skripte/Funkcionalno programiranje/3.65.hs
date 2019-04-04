broj lista = foldl (\a b -> 10*a + b) 0 lista

brojObrnut lista = foldr (\a b -> 10*b+a) 0 lista
