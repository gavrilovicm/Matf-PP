-- 3.51

--sabiranje elemenata liste je:
-- reverse' lista = foldl (+) 0 lista

-- bez definisanja funkcije nece raditi, izbacuje gresku
reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []


