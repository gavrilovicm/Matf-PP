razlozi n = [(x,y) | x<-[1..n], y<-[1..n], x*y==n]

brojP n = length(razlozi n)
