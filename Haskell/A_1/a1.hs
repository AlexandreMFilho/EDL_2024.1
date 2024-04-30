lista_to_num :: [Int] -> Int
lista_to_num xs = foldr(\x acc -> acc * 10 + x) 0 (reverse xs)

main :: IO()
main = print (lista_to_num [1,2,3,4,5])

{- 
  foldr -> percorre uma lista ee reduz a um unico valor onde ela tem uma variavel acumuladora
  agrupando cada elemento da lista por meio de uma expressão
  
  a função por meio de lambdas "(\" recebe um elemento da lista x e um acumulador acc e 
  aponta por meio de -> para a função dessa lista
  
  inicie a lista com algum valor obrigatóriamente, eu coloquei 0 na função para que não 
  tenha modificação de valor
  
  reverse xs reverte a lista de 54321 para 12345
-}