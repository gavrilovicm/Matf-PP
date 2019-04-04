obrni lista = foldl (\a b -> [b] ++ a) [] lista

--sa koriscenjem funkcije flip, u sustini ista prica

obrni1 lista = foldl (flip (:)) [] lista
