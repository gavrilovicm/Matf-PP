-- a)
cifre lista = length (filter (==True) (map (\a -> elem a ['0'..'9']) lista))

-- b) uslov da je malo slovo moze da se zapisuje i "c-ovski"
mala lista = length (filter (==True) (map (\a -> a >= 'a' && a <= 'z') lista))

-- c)
-- ovo verovatno moze bez dodatnog if-a dole ali Boze moj.. :)
desifruj lista = map (\a -> if (head a >= 'a' && head a <= 'z')
							then drop (mala a) a
							else if (head a >= '0' && head a <= '9') 
								 then drop (cifre a) a else a) lista

