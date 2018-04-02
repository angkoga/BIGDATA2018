--lista 04 (Matrizes) -- Angélica Koga
--module Main where

--Separando as Funções
--Exercício 01: Faça uma função que gere uma matriz identidade de tamanho n.
createMatrix :: Integer -> [[Integer]]
createMatrix size =  [[if (y == x) then 1 else 0 | x <- [1..size]] | y <- [1..size]]


--Exercício 02: Faça uma função que calcule a soma da diagonal principal de uma matriz.
getFirstDiag matrix = zipWith (!!) matrix [0..]
sumFirstDiag matrix = foldl (+) 0 (getFirstDiag matrix)
  

--Exercício 03: Faça uma função que calcule a soma da diagonal secundária de uma matriz.
getSecondDiag matrix = zipWith (!!) matrix [length matrix-1, length matrix-2..]
sumSecondDiag matrix = foldl (+) 0 (getSecondDiag matrix)



--Separando os Prints 
main :: IO()
main = do
  print ("Lista 04- " ++ "Angelica Satiko Koga")
----pular linha
  putStrLn " "
  print ("Exercicio 01:")
  print (createMatrix 9)
  
  putStrLn " "
  print ("Exercicio 02:")
  let matrix = createMatrix 5
  print (matrix)
  print (sumFirstDiag matrix)
      
  putStrLn " "
  print ("Exercicio 03:")
  print (getSecondDiag matrix)
  print (sumSecondDiag matrix)
  putStrLn " "
