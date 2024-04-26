inverte :: [a] -> [a]
inverte = foldl (\acc x -> x:acc) []

main :: IO()
main = print (inverte [1 .. 5])

{-
    foldl -> percorre uma lista da esquerda pra direita e reduz a um unico valor onde ela tem uma variavel acumuladora
    agrupando cada elemento da lista por meio de uma expressão
    
    a função por meio de lambdas "(\" recebe um acumulador acc e um elemento da lista x e 
    aponta por meio de -> para a função dessa lista
    
    x:acc -> inverte a lista de 12345 para 54321
    
    [] incia a lista vazia
    
-}