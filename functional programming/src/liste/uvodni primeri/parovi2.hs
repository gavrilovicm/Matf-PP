-- Napisati funkciju zavisnoY a b koja generiše listu parova celih brojeva (x, y),
-- za koje x pripada segmentu [a, b], a y pripada segmentu [x, b].
-- 

zavisnoY a b = [(x, y) | x<-[a..b], y<-[x..b]]

-- ako zamenimo mesta definiciji x i y doci ce do greske

