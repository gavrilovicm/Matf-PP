parMax :: (Double, Double) -> Double
parMax par = if fst par> snd par then fst(par) else snd(par)


-- moze i na drugi nacin preko 'guarded equations'
parMax2 :: (Double, Double) -> Double
parMax2 par
	| fst(par) > snd(par) = fst(par)
	| otherwise = snd(par)



