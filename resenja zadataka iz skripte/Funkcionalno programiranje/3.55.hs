sufiks lista = scanr (:) [] lista

prefiks [] = [[]]
prefiks (x:xs) = [] : map (x:) (prefiks xs)
