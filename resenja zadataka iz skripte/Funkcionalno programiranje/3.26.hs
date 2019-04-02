parni a b = [y | y<-[a..b], mod y 2 == 0]

neparni a b = [y | y<-[a..b], mod y 2 /= 0]
