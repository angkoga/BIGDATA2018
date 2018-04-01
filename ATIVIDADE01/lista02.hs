--lista 02 (Funções) -- Angélica Koga
module Main where
import Data.Char
--Separando as Funções
--Exercício 01: Crie uma função ehTriangulo que determina se três lados x, y, z podem formar um triângulo.
ehTriangulo :: Integer -> Integer -> Integer -> Bool
ehTriangulo a b c = a+b>c && a+c>b && b+c>a

--Exercício 02: Crie uma função tipoTriangulo que determina o tipo do triângulo formado pelos três lados x, y, z.
tipoTriangulo :: Integer -> Integer -> Integer -> String

tipoTriangulo a b c 
  | a == b && b == c = "tipo Equilatero"
  | a == b || b == c || c == a && ehTriangulo a b c = "tipo Isosceles"
  | a/= b && b/= c && a/= c && ehTriangulo a b c = "tipo Escaleno"
  | otherwise = "Nao pertence a nenhum tipo, nao eh Triangulo."

--Exercício 03: Implemente uma função que faz a multiplicação etíope entre dois números.
multEtiope :: Integer -> Integer -> Integer
multEtiope 1 n = n
multEtiope 0 n = 0
multEtiope m n 
  |odd m = n + multEtiope (m `div` 2) (n * 2)
  |otherwise = multEtiope (m `div` 2) (n * 2)

--Exercício 04: Faça uma função que determine se um número é primo.
numPrimo :: Integer -> Bool
numPrimo n' = 
  [1,n'] == [i| i<-[1..n'], n' `mod` i==0]

--Exercício 05: Faça uma função que calcule a soma dos dígitos de um número.
somaDigitos :: Integer -> Integer
somaDigitos 0 = 0
somaDigitos n = (n `mod` 10) + somaDigitos (n `div` 10)

--Exercício 06: Faça uma função que calcule a persistência aditiva de um número.
persistenciaAditiva :: Integer -> Integer
persistenciaAditiva x
  |x < 10 = 0
  |otherwise = (persistenciaAditiva (sum $ numDig x)) + 1
    where 
      numDig 0 = []
      numDig x = numDig (x `div` 10) ++ [x `mod` 10]

--Exercício 07: Faça uma função que calcule o coeficiente binomial de (m,n).
coeficienteBinomial :: Integer -> Integer -> Integer
coeficienteBinomial m n
  |n == 0 || n == m = 1
  |n == 1 = toInteger m
  | otherwise = coeficienteBinomial (m-1) (n-1) + coeficienteBinomial (m-1) n

--Exercício 08: Faça uma função que calcule o elemento (i,j) do triângulo de pascal.
triPascal :: Integer -> Integer -> Integer
triPascal i j = coeficienteBinomial (i - 1)(j - 1)


--Separando os Prints 
main :: IO()
main = do
  print ("Lista 02- " ++ "Angelica Satiko Koga")
----pular linha
  putStrLn " "
  print ("exercicio_01")
  print ("ehTriangulo 3 3 3 ? - " ++ show (ehTriangulo 3 3 3))
  print ("ehTriangulo 1 1 3 ? - " ++ show (ehTriangulo 1 1 3))

  putStrLn " "
  print ("exercicio_02")
  print ("tamanhoTriangulo: 1 1 1 = " ++  (tipoTriangulo 1 1 1))
  print ("tamanhoTriangulo: 2 2 5 = " ++ (tipoTriangulo 2 2 5))
  print ("tamanhoTriangulo: 3 4 5 = " ++ (tipoTriangulo 3 4 5))
  print ("tamanhoTriangulo: 1 2 3 = " ++ (tipoTriangulo 1 2 3))

  putStrLn " "
  print ("exercicio_03")
  print("multEtiope 5 com 6 = " ++ show (multEtiope 5 6))
  print("multEtiope 10 com 15 = " ++ show (multEtiope 10 15))
   
  putStrLn " "
  print ("exercicio_04")
  print ("Num 27: Eh primo? = " ++ show (numPrimo 27))
  print ("Num 7: Eh primo? = " ++ show (numPrimo 7))
  print ("Num 22: Eh primo? = " ++ show (numPrimo 22))
  print ("Num 11: Eh primo? = " ++ show (numPrimo 11))
  
  putStrLn " "  
  print ("exercicio_05")
  print ("somaDigitos: 333 = " ++ show (somaDigitos 333))
  print ("somaDigitos: 123 = " ++ show (somaDigitos 123))
  print ("somaDigitos: 11111 = " ++ show (somaDigitos 11111))
  
  putStrLn " "  
  print ("exercicio_06")
  print ("persistenciaAditiva: 8 = " ++ show (persistenciaAditiva 8))
  print ("persistenciaAditiva: 15 = " ++ show (persistenciaAditiva 15))
  print ("persistenciaAditiva: 12340 = " ++ show (persistenciaAditiva 12340))
  print ("persistenciaAditiva: 111 = " ++ show (persistenciaAditiva 111))
  print ("persistenciaAditiva: 999999999 = " ++ show (persistenciaAditiva 999999999))
  
  putStrLn " "
  print ("exercicio_07")
  print ("coeficienteBinomial 99 e 55 = " ++ show (coeficienteBinomial 3 2))
  print ("coeficienteBinomial de 8 e 8 = " ++ show (coeficienteBinomial 8 8))
  print ("coeficienteBinomial de 0 e 1 = " ++ show (coeficienteBinomial 0 1))

  putStrLn " "
  print ("exercicio_08")
  print ("trianguloPascal: 10 e 6 = " ++ show (triPascal 9 9))
  print ("trianguloPascal: 10 e 6 = " ++ show (triPascal 8 7))
  print ("trianguloPascal: 10 e 6 = " ++ show(triPascal 6 4))
  print ("trianguloPascal: 10 e 6 = " ++ show (triPascal 8 6))
  print ("trianguloPascal: 10 e 6 = " ++ show (triPascal 10 6))
  
  putStrLn " "