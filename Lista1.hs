--Exercício 1
func1:: Double -> Double
func1 x 
	|x >= 0 = (x+4)/(x+2)
	|otherwise = 2/x
	
func1b:: Double -> Double -> Double
func1b x y
	|x >= y = x+y
	|otherwise = x-y
	
	
func1c:: Double -> Double -> Double -> Double
func1c x y z
	|(x+y) > z = x+y+z
	|x+y < z = x-y-z
	|otherwise = 0
	


--Exercício 2
-- O erro estava em não criar o caso base, fat continuaria recebendo x-1 até estourar a memória
fat:: Int -> Int
fat 0 = 1
fat x = x*fat(x-1)

--Exercício 3
soma:: Int -> Int -> Int
soma x y = x+y


multiplica:: Int -> Int -> Int
multiplica x y = (soma x 0) * (soma 0 y)

--Exercício 4

--invertInt:: Int -> Int


--Exercício 5
square:: Int -> Int
square n = n*n

fourPower:: Int -> Int
fourPower n = (square n) * (square n)

--Exercício 6
-- sequÊncia sqrt(6) ; sqrt(6+sqrt(6) ...

func6:: Int -> Double
func6 n
	|n < 0 = 0
	|n == 0 = sqrt 6
	|otherwise = sqrt(6 + func6 (n-1))
	
	
	
--Exercício 7

func7:: Int -> Int -> Int
func7 n m
	|n > m = 0
	|otherwise =  (fat m)/(fat n)*(fat(m-n))
