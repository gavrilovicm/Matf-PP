-- zadatak sa sledeceg pdf-a:
-- http://www.programskijezici.matf.bg.ac.rs/ppI/2018/primeri/Primer_Kolokvijuma.pdf


raznostranicni :: [(Int, Int, Int)] -> Int

raznostranicni (x:xs)
	| null xs = 0
	| razn x = 1 + raznostranicni xs
	| not (razn x) = raznostranicni xs
	| otherwise = 0

razn (a, b, c) = (a/=b)&&(b/=c)&&(a/=c)

lista (a, b, c) = [a, b, c]

-- da bi se testirao primer kao kod njih treba da se ima i funkcija trougao iz prethodnog primera
-- samo skini komentare i load-uj fajl u ghci i moci ce da se testira.
--    
--    trougao :: Int -> [(Int, Int, Int)]
--    
--    trougao n = [(x,y,z) | x<-[1..n], y<-[1..n], z<-[1..n], uslov x y z ]
--    
--    uslov x y z = (x + y > z) && (x+z>y) && (y+z > x) 
