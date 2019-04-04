-- duplikati pomocu foldl

duplikati lista = foldr (\a b -> a : (filter (/=a) b)) [] lista
