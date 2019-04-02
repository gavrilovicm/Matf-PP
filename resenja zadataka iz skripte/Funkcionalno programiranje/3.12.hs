

uDekadnu n osn
	| n == 0 = 0
	| otherwise = (mod n 10) + (uDekadnu(div n 10) osn)*osn


izDekadne n osn
	| n < osn = n
	| otherwise = (mod n osn) + (izDekadne (div n osn) osn)*10
