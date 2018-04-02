--lista 03 (Listas)-- Angélica Koga
module Main where
import Data.List
import Data.Ord

--Separando as Funções
--Exercício 01: Crie uma função divisivel20 x que retorna verdadeiro se x for divisível por todos os números de 1 a 20.
divisivel20 :: Integer -> Bool
divisivel20 x = if length (filter (== True) y) == 20
                then True
                else False
                where z = map (x `mod`) [1..20]
                      y =  map (== 0) z

--Exercício 02: Crie uma função projectEuler5 que retorna o primeiro número natural que retorna True para a função do exercício anterior. Pense em como reduzir o custo computacional.
-- (Aqui o lcm acha o mdc e o foldr reduz com operador binário.)
projectEuler = foldr1 lcm sequencia
  where
    sequencia = [1..20]

--Exercício 03: Crie a lista de números de Fibonacci utilizando uma função geradora.
fibonacci = 1 : 2 : proximo fibonacci
  where
    proximo ( x : t@ ( y : _)) = ( x + y ) : proximo t

--Exercício 04: Utilizando a lista anterior, calcule a soma dos números de Fibonacci pares dos valores que não excedem 4.000.000. (Project Euler 2)
menor x = x < 4000000
projectEuler2 = sum $ filter even $ takeWhile menor fibonacci

--Exercício 05: Faça uma função para calcular o produto escalar entre dois vetores.
produtoEscalar :: Num a => [a] -> [a] -> a
produtoEscalar [] [] = 0
produtoEscalar (x:x') (y:y') = x*y + produtoEscalar x' y'

--Exercício 06: Crie a função collatz x que retorna x/2, se x for par e (3x+1) se for ímpar.
-- even = par  / odd = ímpar
collatz :: Integer -> Integer
collatz x
--even
  |x `mod` 2 == 0 = x `div` 2
--odd
  |otherwise = (3 * x) + 1 
  
--Exercício 07: Implemente uma função collatzLen x que retorna o tamanho da lista formada pela aplicação repetida de collatz sobre o valor x até que essa chegue no número 1.
--collatzLen :: Integer -> Integer

aplicaCollatz x
  |x == 1 = []
  |collatz x == 1 = [1]
  |otherwise = collatz x : aplicaCollatz (collatz x)
  
collatzLen x = length $ aplicaCollatz x

print ("collatzLen 4 = "(collatzLen 4))
print ("collatzLen 9 = "(collatzLen 9))
print ("collatzLen 10 = "(collatzLen 10))

--Exercício 08: Encontre o número x entre 1 e 1.000.000 que tem a maior sequência de Collatz. (Project Euler 14)


--Separando os Prints 
main :: IO()
main = do
  print ("Lista 03 - " ++ "Angelica Satiko Koga")

  putStrLn " "
  print ("Exercicio 01:")
  print ("divisivel20 10000000 = " ++ show (divisivel20 10000000))
  print ("divisivel20 232792560 = " ++ show (divisivel20 232792560)) 
  print ("divisivel20 232792559 = " ++ show (divisivel20 232792559)) 
  
  putStrLn " "
  print ("Exercicio 02:")
  print ("projectEuler otimizado = " ++ show (projectEuler))
    
  putStrLn " "
  print ("Exercicio 03:")
  print ("Fibonacci = " ++ show (take 10 fibonacci))
  
  putStrLn " "
  print ("Exercicio 04:")
  print ("projectEuler: soma dos valores que nao excedem 4000000 = " ++ show (projectEuler2))
  
  putStrLn " "  
  print ("Exercicio 05:")
  print (produtoEscalar [2,1] [4,3])  
  
  putStrLn " "  
  print ("Exercicio 06:")
  print ("Funcao collatz x retorna:")
  print ("Par -> x/2 || Impar -> 3*x + 1")
  print ("100 : " ++ show (collatz 100))
  print ("6 : " ++ show (collatz 6))
  print ("1 : " ++ show (collatz 1))
  print ("9 : " ++ show (collatz 9))
  
  putStrLn " "  
  print ("Exercicio 07:")
  print ("collatzLen 4 = " ++ show (collatzLen 4))
  print ("collatzLen 9 = " ++ show (collatzLen 9))
  print ("collatzLen 10 = " ++ show (collatzLen 10))
  
  putStrLn " "  
  print ("Exercicio 08:")
  print ( )
    
  putStrLn " "