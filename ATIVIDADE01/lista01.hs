--lista 01
--module Main where
--Separando osFunções
--Exercício 01: Execute as seguintes operações utilizando o menor número de parênteses:
resultadoa = 2*3+5
resultadob = 2+2*3+1
resultadoc = 3^4+5*2^5+1

-- Exercício 02: Faça uma função mult3 x que retorne True caso a entrada seja múltiplo de 3 e False caso contrário.
mult3 :: Integer -> Bool
mult3 x = ( x `rem` 3 == 0 ) 

-- Exercício 03: Faça uma função mult5 x que retorne True caso a entrada seja múltiplo de 5 e False caso contrário.
mult5 :: Integer -> Bool
mult5 x = ( x `rem` 5 == 0 ) 

-- Exercício 04: Faça uma função mult35 x que retorne True caso a entrada seja múltiplo de 3 e 5 e False caso contrário.
mult35 :: Integer -> Bool
mult35 x = ( mult3 x) && ( mult5 x)

-- Exercício 05: Faça um programa que retorne True caso a entrada seja menor que -1 ou (maior que 1 E múltiplo de 2), e False caso contrário.
atv5 :: Integer -> Bool
atv5 x = ( x < -1) || (x > 1 && x `rem` 2 == 0)

-- Exercício 06: Faça uma função que recebe um tipo Integer e retorna ele dividido por 2:
divide2 :: Integer -> Double
divide2 x = fromIntegral x / 2

-- Exercício 07: Faça uma função que receba um ângulo a e retorne uma tupla contendo o seno da metade desse ângulo utilizando a identidade:
seno :: (Double) -> (Double, Double)
seno x  = (sqrt ((1 - cos x)/ 2), - sqrt ((1 - cos x)/ 2))

-- Exercício 08: Crie uma lista de anos bissextos desde o ano 1 até o atual.
bissexto :: Integer -> Bool
bissexto anox = (anox `rem` 400 == 0) || ((anox `rem` 4 == 0) && ( anox `rem` 100 /= 0))
listabissexto = [anox | anox <- [1..2018], bissexto anox]

-- Exercício 09: Encontre os 10 primeiros anos bissextos e os 10 últimos anos bissextos.
-- bissexto anox = (anox `rem` 400 == 0) || ((anox `rem` 4 == 0) && ( anox `rem` 100 /= 0))
-- let listabissexto = [x | x <- [1..2018], bissexto x]
dezprimeiros = take 10 listabissexto
dezultimos = drop (length listabissexto - 10) listabissexto

-- Exercício 10: Crie uma tupla em que o primeiro elemento tem metade dos anos bissextos e o segundo elemento a outra metade.
-- bissexto anox = (anox `rem` 400 == 0) || ((anox `rem` 4 == 0) && ( anox `rem` 100 /= 0))
-- let listabissexto = [x | x <- [1..2018], bissexto x]
metadeinicial = take (length listabissexto `div` 2) listabissexto
metadefinal = drop (length listabissexto `div` 2) listabissexto
resultado = (metadeinicial, metadefinal)

--Exercício 11: Crie um concatenador de strings que concatena duas strings separadas por espaço.
concatena :: String -> String -> String
concatena a b = a ++ " " ++ b

--Exercício 12: Dada a string “0123456789”, crie uma lista com os dígitos em formato Integer.
stringToInt :: String -> [Integer]
digitos = stringToInt "0123456789"
stringToInt x = map (read . (:"")) x :: [Integer]


--Separando os Prints 
main :: IO()
main = do
  print ("Lista 01- "++ "Angelica Satiko Koga")
----pular linha
  putStrLn " "
  print ("Exercicio_01")
  print ("2 x 3 + 5 = " ++ show (resultadoa))
  print ("2 + 2 x 3 + 1 = " ++ show (resultadob))
  print ("3^4 + 5 x 2^5 + 1 = " ++ show (resultadoc))
  
  putStrLn " "
  print ("Exercicio_02")
  print("36 / 3 = " ++ show (mult3 36))
  print("20 / 3 = " ++ show (mult3 20))
  print("15 / 3 = " ++ show (mult3 15))
  print("11 / 3 = " ++ show (mult3 11))
  
  putStrLn " "
  print ("Exercicio_03")
  print("91 / 5 = " ++ show (mult5 91))
  print("80 / 5 = " ++ show (mult5 80))
  print("34 / 5 = " ++ show (mult5 34))
  print("25 / 5 = " ++ show (mult5 25))

  putStrLn " "
  print ("Exercicio_04")
  print("15 / 3 && 15 / 5 = " ++ show (mult35 15))
  print("11 / 3 && 11 / 5 = " ++ show (mult35 11))
  print("90 / 3 && 90 / 5 = " ++ show (mult35 90))
  print("9 / 3 && 9 / 5 = " ++ show (mult35 9))
  
  putStrLn " "  
  print ("Exercicio_05")
  print("(-3) < -1 OU ((-3) > 1 E (-3) / 2 = 0) = " ++ show (atv5 (-3)))
  print("(0) < -1 OU ((0) > 1 && (0) / 2 = 0) = " ++ show (atv5 (0)))
  print("(50) < -1 OU ((50) > 1 && (50) / 2 = 0)  = "++ show (atv5 (50)))
  print("(17) < -1 OU ((17) > 1 && (17) / 2 = 0)  " ++ show (atv5 (17)))
 
  putStrLn " "  
  print ("Exercicio_06")
  print("9 / 2 = " ++ show (divide2 9))
  print("43 / 2 = " ++ show (divide2 43))
  print("90 / 2 = " ++ show (divide2 90))
  print("1 / 2 = " ++ show (divide2 1))
  print("-5 / 2 = " ++ show (divide2 (-5)))
  
  putStrLn " "  
  print ("Exercicio_07")
  print ("(sqrt ((1- cos 90)/2),- sqrt ((1- cos 90)/2)) = " ++ show (seno 90))
  print ("(sqrt ((1- cos 60)/2),- sqrt ((1- cos 60)/2)) = " ++ show (seno 60))
    
  putStrLn " "  
  print ("Exercicio_08")
  print("Anos bissextos: " ++ show (listabissexto))

  putStrLn " "  
  print ("Exercicio_09")
  print("9.1- Dez primeiros: " ++ show (dezprimeiros))
  print ("9.2- Dez ultimos: " ++ show (dezultimos))
  
  putStrLn " "
  print ("Exercicio_10")
  print (resultado)
    
  putStrLn " "  
  print ("Exercicio_11")
  let palavra1 = "Ola"
  let palavra2 = "Mundo!"
  print ("Palavras:")
  print ("1-"++" "++ palavra1)
  print ("2-"++" "++ palavra2)
  print ("Palavras Concatenadas:")
  print (concatena palavra1 palavra2)
      
  putStrLn " "
  print ("Exercicio_12")
  print(digitos)
  putStrLn " "