-- a)
trougaoni :: Int -> [(Int, Int)]
trougaoni n = [(i, i*(i+1) `div` 2) | i<-[1..n]]


-- b)
kvadratni :: [(Int, Int)] -> [Int]
kvadratni (x:xs)
	| null xs = []
	| otherwise = (snd x + snd(head xs)) : kvadratni xs



