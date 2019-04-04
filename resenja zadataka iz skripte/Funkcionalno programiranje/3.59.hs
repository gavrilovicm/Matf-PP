varijacije lista 0 = [[]]
varijacije lista k = concat (map (\d -> map (d:) podlistu ) lista)
						where podlistu = varijacije lista (k-1)
