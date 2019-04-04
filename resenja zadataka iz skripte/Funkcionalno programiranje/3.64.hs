podlistePonavljanja [] = [] 
podlistePonavljanja (x:xs) = takeWhile (==x) (x:xs) : podlistePonavljanja (dropWhile (==x) (xs))
