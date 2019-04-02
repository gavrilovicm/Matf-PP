-- TODO
osnova :: Int -> Int -> Int -> Int
osnova x osn1 osn2
	| x < osn2 = x
	| otherwise = (mod x osn2) + (osnova (div x osn2) osn1 osn2)*osn1
