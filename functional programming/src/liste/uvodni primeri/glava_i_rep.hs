-- funkcija koja bez upotrebe funkcija head i tail vraca glavu odnosno rep liste


glava :: [a] -> a
glava [] = []
glava (x:_) = x

rep :: [a] -> [a]
rep [] = []
rep (_:xs) = xs
