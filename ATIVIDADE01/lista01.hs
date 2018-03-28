--lista 01
--Angélica Koga

--Separando osFunções
--exercício01
resultadoa = (2*3) + 5
resultadob = 2 + (2*3) +1
resultadoc = 3^4 + (5 * 2^5) + 1

--exercício02
mult3 x = ( x `rem` 3 == 0 ) 

--exercício03
mult5 x = ( x `rem` 5 == 0 ) 






--Separando os Prints 
main = do

----pular linha
  putStrLn " "
--exercício01
  print ("exercicio_01")
  print ("2 x 3 + 5 = " ++ show (resultadoa))
  print ("2 + 2 x 3 + 1 = " ++ show (resultadob))
  print ("3^4 + 5 x 2^5 + 1 = " ++ show (resultadoc))
  
----pular linha
  putStrLn " "
--exercício02
  print ("exercicio_02")
  print("36 / 3 = " ++ show (mult3 36))
  print("20 / 3 = " ++ show (mult3 20))
  print("15 / 3 = " ++ show (mult3 15))
  print("11 / 3 = " ++ show (mult3 11))
  
----pular linha
  putStrLn " "
--exercício03
  print ("exercicio_03")
  print("91 / 5 = " ++ show (mult5 91))
  print("80 / 5 = " ++ show (mult5 80))
  print("34 / 5 = " ++ show (mult5 34))
  print("25 / 5 = " ++ show (mult5 25))

----pular linha
  putStrLn " "
--exercício04
  print ("exercicio_04")
  
----pular linha
  putStrLn " "  
--exercício05
  print ("exercicio_05")
  
----pular linha
  putStrLn " "  
--exercício06
  print ("exercicio_06")
  
----pular linha
  putStrLn " "  
--exercício07
  print ("exercicio_07")
  
----pular linha
  putStrLn " "  
--exercício08
  print ("exercicio_08")
  
----pular linha
  putStrLn " "  
--exercício09
  print ("exercicio_09")

----pular linha
  putStrLn " "
  --exercício10
  print ("exercicio_10")
  
----pular linha
  putStrLn " "  
--exercício11
  print ("exercicio_11")
  
----pular linha
  putStrLn " "
--exercício12
  print ("exercicio_12")

----pular linha
  putStrLn " "
