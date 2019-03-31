-- izdvaja sve pozitivne elemente liste

pozitivni lista = [x | x<-lista, x>0]

-- preko funkcije filter
-- filter funkcija

pozitivni1 lista = filter _vece lista
_vece x = x>0


-- elegantnije
pozitivni2 lista = filter (>0) lista


-- jos elegantnije
pozitivni3 = filter (>0)

