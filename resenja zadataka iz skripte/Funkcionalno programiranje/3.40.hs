usteda :: [Double] -> Double
usteda lista = sum lista - sum (map (\d -> if ((d < 1000)&&(deljiv d 1)) then (d / 2) else d) lista)

deljiv n i
	| 25*i > n = False
	| 25*i == n = True
	| otherwise = deljiv n (i+1)
