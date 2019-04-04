-- armstrongov

armstrongov n = sum (map (\d -> d^(length (lista n))) (lista n)) == n

-- zapis bez lambda funkcije u map-u
-- armstrongov n = sum (map (^length(lista n)) (lista n)) == n

uzmi15 = take 15 [y | y<-[1..], armstrongov y]

lista 0 = []
lista n = mod n 10 : lista (div n 10)


