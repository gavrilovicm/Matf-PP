prost n = _prost n 2

_prost n k
	| n == k = True
	| mod n k == 0 = False
	| otherwise = _prost n (k+1)
