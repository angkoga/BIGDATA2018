--lista 04 (Matrizes) -- Angélica Koga
module Main where

--Separando as Funções
--Exercício 01: Faça uma função que gere uma matriz identidade de tamanho n.
matrizIdentidade :: Integer -> [[Integer]]
matrizIdentidade n =  [[if (y == x) then 1 else 0 | x <- [1..n]] | y <- [1..n]]

--Exercício 02: Faça uma função que calcule a soma da diagonal principal de uma matriz.
somaDPrincipal :: [[Integer]] -> Integer
somaDPrincipal x = sum (zipWith (!!) x [0..])

--Exercício 03: Faça uma função que calcule a soma da diagonal secundária de uma matriz.
somaDSecundaria :: [[Integer]] -> Integer
somaDSecundaria m = sum (zipWith (!!) m [length m-1, length m-2.. ])


--Separando os Prints 
main :: IO()
main = do
  print ("Lista 04- " ++ "Angelica Satiko Koga")
----pular linha
  putStrLn " "
  print ("Exercicio 01:")
  print ("matrizIdentidade 5:")
  print (matrizIdentidade 5)
  print ("matrizIdentidade 9:")
  print (matrizIdentidade 9)
  
  putStrLn " "
  print ("Exercicio 02:")
  print ("Soma da Diagonal Principal da matrizIdentidade 7:")
  print (matrizIdentidade 7)
  print ("= " ++ show (somaDPrincipal (matrizIdentidade 7)))
  print ("Soma da Diagonal Principal da seguinte matriz:")
  print ("1 9 9")
  print ("8 1 9")
  print ("8 8 1")
  print ("= " ++ show(somaDPrincipal [[1,9,9],[8,1,9],[8,8,1]]))
  print ("Soma da Diagonal Principal da seguinte matriz:")
  print ("9 1")
  print ("1 9")
  print ("= " ++ show(somaDPrincipal [[9,1],[1,9]]))
  
  putStrLn " "
  print ("Exercicio 03:")
  print ("Soma da Diagonal Secundaria da matrizIdentidade 2:")
  print (matrizIdentidade 2)
  print ("= " ++ show(somaDSecundaria (matrizIdentidade 2)))
  print ("Soma da Diagonal Secundaria da seguinte matriz:")
  print ("1 1 1 2")
  print ("3 3 2 3")
  print ("5 2 5 5")
  print ("2 7 7 7")
  print ("= " ++ show(somaDSecundaria [[1,1,1,2],[3,3,2,3],[5,2,5,5],[2,7,7,7]]))
  print ("Soma da Diagonal Secundaria da seguinte matriz:")
  print ("1 1 1 1 3")
  print ("1 1 1 3 1")
  print ("1 1 3 1 1")
  print ("1 3 1 1 1")
  print ("3 1 1 1 1")
  print ("= " ++ show(somaDSecundaria [[1,1,1,1,3],[1,1,1,3,1],[1,1,3,1,1],[1,3,1,1,1], [3,1,1,1,1]]))
  putStrLn " "