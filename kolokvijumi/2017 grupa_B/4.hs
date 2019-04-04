desifruj :: [Int] -> Int ->[Int]
desifruj lista k = _desifruj lista k 0


_desifruj [] _ _ = []
_desifruj (x:xs) k i
	| k == i = _desifruj xs k 0
	| x < 0 = (x+1) : _desifruj xs k (i+1)
	| x > 0 = (x-1) : _desifruj xs k (i+1)
