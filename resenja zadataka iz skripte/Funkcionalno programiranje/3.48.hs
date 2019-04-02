sledb [] = []
sledb l = filter (>0) (map (+1) l)
