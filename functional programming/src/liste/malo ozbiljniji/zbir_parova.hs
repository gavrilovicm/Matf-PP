-- Funkcija vraca listu parova brojeva ciji je zbir n


parovi n = [(a, b) | a<-[1..n], b<-[1..n], a+b == n ]
