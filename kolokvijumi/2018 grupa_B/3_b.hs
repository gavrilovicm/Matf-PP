qsort [] = []
qsort (x:xs) = qsort manje ++ [x] ++ qsort vece
    where manje = [t | t<-xs, length(t) <= length(x)]
          vece = [e | e<-xs, length e > length(x)]
