import Data.Char
import Data.List

--Exercício1
func1:: Char -> (Char, Char, Int)
func1 c = (c, maiuscula c, numero c)

maiuscula:: Char -> Char
maiuscula c = toUpper c

numero:: Char -> Int
numero n = ord 'n'


--Exercício2
pessoa rg
	|rg == 1 = ("João Silva", 12, 'm')
	|rg == 2 = ("Jonas Souza", 51, 'm')
	|rg == 321 = ("Jocileide Strauss" , 21, 'f')
	|otherwise = ("Não há ninguém mais", 9999, 'x')

--a)
--maisnovo:: Int -> (String, Int, Char)
--maisnovo n = verificamaisnov




--Exercício3
func3:: Char -> (Char, Char, Int)
func3 c
	|(ord c > ord 'Z') = (c, toUpper c, ord c)
	|otherwise = (c, toLower c, ord c)
	
	
	
--Exercício4
func4:: Int -> Int -> Int -> Int -> (Int, Int, Int, Int)
func4 a b c d = (x1, x2, x3, x4)
	where
		[x1, x2, x3, x4] = sort [a, b, c, d]
		

--Exercício5
--func5:: (Int -> Int -> Int) -> (Int -> Int -> Int) -> Int
--func5 



--Exercício6
func6:: (Float, Float, Float) -> (Float, Float)
func6 (a,b,c)
	|delta >= 0 = (x1,x2)
	|otherwise = error "Raízes imaginárias"
	where 
		delta = b*b - 4*a*c
		x1 = (-b + sqrt delta)/(2*a)
		x2 = (-b - sqrt delta)/(2*a)



--Exercício7
func7:: (Int, Int, Int) -> (String, Int)
func7 (a, b, c)
	|(a > b+c) || (b > a+c) || (c > a+b) = error "Não é triângulo"
	|a == b && a == c = ("Equilatero", a+b+c)
	|a == b && a /= c = ("Isosceles", a+b+c)
	|a /= b && b /= c && a /= c =("Escaleno", a+b+c)

--Exercício8
base :: Int -> (Int, String, String, Char)
base x
	|x == 0 = (1793, "Pedro Paulo" , "MESTRE", 'M')
	|x == 1 = (1797, "Joana Silva" , "MESTRE", 'M')
	|x == 2 = (1534, "JOâo Medeiros " , "Doutor", 'F')
	|x == 3 = (1267, "Claudio " , "Doutor", 'M')
	|x == 4 = (1737, "Paula de Medeiros " , "Mestre", 'F')
	|x == 10 = (0, "" , "", '0')
	|otherwise = (0, "" , "", '0')


--a)







conta:: String -> String
conta s = [x | x <- s, isDigit x]
