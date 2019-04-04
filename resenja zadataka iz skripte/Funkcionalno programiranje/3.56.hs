-- postfiksna notacija izraza 2 3 +
-- Isto kao u resenju u skripti...

vrednost :: [Char] -> Int

vrednost = head . foldl funkcija [] . words where
	funkcija (x : y : xs) "+" = (x+y) : xs
	funkcija (x : y : xs) "*" = (x*y) : xs
	funkcija xs num = read num : xs




