brisiUzastopna [] = []
brisiUzastopna (x:xs) 
	| not (or (map (==x) xs)) = x : brisiUzastopna xs
	| otherwise = brisiUzastopna xs
