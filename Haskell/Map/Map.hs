-- --Produtos
-- data Produto = Produto { name :: String, preco :: Float } deriving Show

-- -- Função para reajustar o preço
-- ajusatarPreco :: Produto -> Produto
-- ajusatarPreco prod = prod { preco = (preco prod) * 1.01 }

-- -- Função Map
-- ajusatarPrecos :: [Produto] -> [Produto]
-- ajusatarPrecos = map ajusatarPreco

-- main :: IO ()
-- main = do
--     let produtos = [ Produto "Pao" 2.0, Produto "Leite" 3.5, Produto "Ovos" 5.0 ]
--         produtosReajuste = ajusatarPrecos produtos
--     putStrLn "Produtos antes do reajuste:"
--     mapM_ print produtos
--     putStrLn "\nProdutos após o reajuste:"
--     mapM_ print produtosReajuste


-- Produtos
data Produto = Produto { nome :: String, marca :: String, preco :: Float } deriving Show

-- Função para ajustar o preço
ajustarPreco :: Float -> Produto -> Produto
ajustarPreco percentualAumento prod = prod { preco = (preco prod) * (1 + percentualAumento / 100) }

-- Função Filter
ajustarPrecosPorMarca :: String -> Float -> [Produto] -> [Produto]
ajustarPrecosPorMarca marcaAlvo percentualAumento produtos =
    let produtosDaMarca = filter (\prod -> marca prod == marcaAlvo) produtos
    in map (ajustarPreco percentualAumento) produtosDaMarca

-- Exemplo de uso
main :: IO ()
main = do
    let produtos = [ Produto "Pao" "MarcaA" 2.0, Produto "Leite" "MarcaB" 3.5, Produto "Queijo" "MarcaA" 5.0 ]
        marcaAlvo = "MarcaA"
        percentualAumento = 5.0
        produtosAjustados = ajustarPrecosPorMarca marcaAlvo percentualAumento produtos
    putStrLn "Produtos antes do reajuste:"
    mapM_ print produtos
    putStrLn "\nProdutos após o reajuste da marca A:"
    mapM_ print produtosAjustados
