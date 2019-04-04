delioci n = filter (\d -> mod n d == 0) [2..(n-1)]

prost n = length (delioci n) == 0

prosti n = [y | y<-[2..n], prost y]
