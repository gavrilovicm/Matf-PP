-- funkcija svaki element liste uvecava za jedan

uvecaj lista = [x+1 | x<-lista ]

-- preko funkcije viseg reda 'map'

uvecaj1 lista = map _uvecaj lista
_uvecaj x = x + 1 --   ^
--					   |
--					   |
--					   ovde prvi argument map-a mora da bude funkcija
--					   moze se napisati lambda funkcija umesto odvojene


-- preko lambda funkcije
uvecaj2 lista = map (\x -> x+1) lista
--                   ^
--                   |
--                   samo jedno sles, da je bilo vise argumenata navodili bi se jedan
--                   za drugim bez zareza


-- preko karijeve funkcije 
uvecaj3 lista = map (+1) lista



-- karijeva funkcija, fiksira se argument(lista) 
uvecaj4 = map (+1)
