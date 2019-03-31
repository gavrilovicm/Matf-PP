-- funkcija proverava da li se element nalazi u listi

provera n [] = False
provera n (x:xs) =  (x == n) || provera n xs


-- preko map-a i kompozicije funkcija
provera1 x = or . map (== x)
-- map (== x) -> funkcija map kojoj fiksiramo funkciju (==x) to je u stvari karijeva funkcija
-- koja ima kao argument listu i vraca listu
