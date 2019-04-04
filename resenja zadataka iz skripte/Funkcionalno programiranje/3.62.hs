qsort [] = []
qsort (x:xs) = qsort manji ++ [x] ++ qsort veci
    where manji = [k | k<-xs, k <= x]
          veci = [u | u<-xs, u>x]
