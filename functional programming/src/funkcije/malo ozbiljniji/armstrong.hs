-- k-tocifreni broj je Armstrongov ako je zbir k-tih stepena cifara tog broja jednak samom broju

-- nista nalik resenju iz zbirke
arm n = n == foldr (+) 0 (map (\d -> d^(length(cifre n))) (cifre n))

br_arm = filter arm [1..]


cifre 0 = []
cifre n = n `mod` 10 : cifre (n `div` 10)

svi = take 15 [x | x<-br_arm]
