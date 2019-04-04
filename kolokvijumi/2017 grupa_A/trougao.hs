-- zadatak sa sledeceg pdf-a:
-- http://www.programskijezici.matf.bg.ac.rs/ppI/2018/primeri/Primer_Kolokvijuma.pdf

trougao :: Int -> [(Int, Int, Int)]

trougao n = [(x,y,z) | x<-[1..n], y<-[1..n], z<-[1..n], uslov x y z ]

uslov x y z = (x + y > z) && (x+z>y) && (y+z > x) 
