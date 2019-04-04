--ucesljaj
ucesljaj (x:xs) (y:ys) = x:(y:(ucesljaj xs ys))
ucesljaj _ _ = []
