izbaci k l = _izbaci k l 1

_izbaci k [] i = []
_izbaci k (x:xs) i
	| i==k = _izbaci k xs (i+1)
	| otherwise = x : _izbaci k xs (i+1)
