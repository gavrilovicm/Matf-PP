-- funkcija pravi listu pravih delioca broja n
-- zadatak 3.52

-- prvi nacin
del :: Int -> [Int]
del n = [y | y<-[2..(n-1)], mod n y == 0]


-- drugi nacin
del1 n = filter (\broj -> mod n broj == 0) [1..n]
