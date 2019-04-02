-- sa sablonom liste


duzina [] = 0
duzina (x:xs) = 1 + duzina xs


-- bez sablona liste

duzina1 [] = 0
duzina1 lista = 1 + duzina1 (tail lista)
