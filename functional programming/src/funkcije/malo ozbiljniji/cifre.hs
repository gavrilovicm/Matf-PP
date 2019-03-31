-- funkcija odredjuje cifre datog prirodnog broja n, vraca listu

cifre 0 = []
cifre n = n `mod` 10 : cifre (n `div` 10)

