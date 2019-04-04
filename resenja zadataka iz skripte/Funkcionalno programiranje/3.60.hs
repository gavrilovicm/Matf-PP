prosekOdlicnih lista = prosek (filter (>=4.5) (map (\l -> prosek l) lista)) 

prosek lista = (sum lista) / fromIntegral(length lista)
