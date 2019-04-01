

sifruj :: [Int] -> Int -> [Int]

sifruj lista k
	| mod k 2 == 0 = par_sifruj lista k
	| otherwise = nepar_sifruj lista k

par_sifruj [] k = []
par_sifruj lista k = (map (\d -> if d>0 then d+1 else d-1) (take k lista)) ++ [sum (take k lista)] ++ par_sifruj (drop k lista) k


nepar_sifruj [] k = []
nepar_sifruj lista k = (map (\d -> if d>0 then d+1 else d-1) (take k lista)) ++ [product(take k lista)] ++ nepar_sifruj(drop k lista) k

