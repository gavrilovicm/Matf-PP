par :: Int -> (Int, Int)
par n = (n-1, n+1)

postojiPar lista n = any (\d -> (fst d == (n-1)) && (snd d == (n+1))) lista

