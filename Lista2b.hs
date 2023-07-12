--Exercício1
func1:: Int
func1 = somalista [a*a | a <- [1..100]]

somalista:: [Int] -> Int
somalista [] = 0
somalista (h:t) = h + somalista t



--Exercício2





--Exercício3
pyths:: Int -> [(Int, Int, Int)]
pyths 0 = []
pyths n = [(a,b,c)| a <- [1..n], b <- [1..n], c <- [1..n], (a*a)+(b*b) == (c*c)]


--Exercício4
perfects:: Int -> [Int]
perfects 0 = []
perfects n = [x| x <- [1..n], x == somalista(fatores x)]

fatores:: Int -> [Int]
fatores n = [x| x <- [1..n-1], mod n x == 0]




--Exercicio5



--Exercício7
func7:: [Int] -> [Int] -> Int
func7 x y = somaduplas (zip x y)

somaduplas :: [(Int, Int)] -> Int
somaduplas [] = 0
somaduplas ((h1, h2):t) = mult h1 h2 + somaduplas t

mult:: Int -> Int -> Int
mult _ 0 = 0
mult 0 _ = 0
mult a b = a*b
