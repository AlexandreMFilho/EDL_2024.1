{-
Problema: Média de uma Lista
Dada uma lista de números, encontre a média de todos os elementos da lista.
-}
listaNumerosDouble :: [Double]
listaNumerosDouble = [1.0, 2.0, 3.0, 4.0, 5.0]


media:: [Double] -> Double
media lista = (foldr (\x acc -> (acc + x)) (0) (lista)) / fromIntegral(length(lista))

--Ex2________________________________________________________
{-
Problema: Filtragem de Números Pares
    Dada uma lista de números, filtre apenas os números pares.
-}
listaNumerosInt :: [Int]
listaNumerosInt = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

listaNumerosPares :: [Int] -> [Int]
listaNumerosPares lista = filter (criterio) (lista) 

criterio :: Int -> Bool
criterio x
    | x `mod` 2 == 0 = True
    |otherwise = False

--Ex3________________________________________________________
--Dada uma lista de números, dobre todos os elementos.

dobrolista :: [Int] -> [Int]
dobrolista lista = map (dobro) (lista)

dobrolistalamb :: [Int] -> [Int]
dobrolistalamb lista = map (\x -> x*2) (lista)

dobrolistafoldl :: [Int] -> [Int]
dobrolistafoldl lista = foldl (\x acc -> acc*2:x) ([]) (lista)

dobrolistafoldr :: [Int] -> [Int]
dobrolistafoldr lista = foldr (\x acc -> x*2:acc) ([]) (lista)

dobro :: Int -> Int
dobro x = x*2
--Ex4________________________________________________________
--Dada uma lista de itens, conte quantos elementos únicos existem.
-- Base de dados
listaItens :: [Char]
listaItens = "abracadabraz"

-- Solução
contarElementosUnicos :: Eq a => [a] -> Int
contarElementosUnicos xs = length $ filter (\x -> length (filter (==x) xs) == 1) xs

--Ex8________________________________________________________
--Dada uma lista de números, encontre o maior elemento da lista.

maxlistafoldr :: [Int] -> Int
maxlistafoldr lista = foldr (\x acc -> if (x>acc) then acc+x-acc else acc) (0) (lista)


maxlistafoldl :: [Int] -> Int
maxlistafoldl lista = foldl (\acc x -> if (x>acc) then acc+x-acc else acc) (0) (lista)

--_______________________Main_______________________________
main = print $ contarElementosUnicos listaItens