-- Funkcija koja vraca parove brojeva gde prvi broj pripada intervalu [a, b]
-- a drugi broj pripada intervalu [c, d]


parovi a b c d = [(x, y) | x<-[a..b], y<-[c..d]]


-- kada obrnemo redosled definisanja y pa x dobice se drugaciji ispis
parovi2 a b c d = [(x, y) |  y<-[c..d],x<-[a..b]]

