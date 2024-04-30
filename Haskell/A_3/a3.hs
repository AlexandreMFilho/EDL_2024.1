indices :: [a] -> [(Int, a)]
indices xs = foldr (\x acc -> (snd acc + 1, x) : acc) (0, []) xs

main :: IO()
main = print (indices [1,2,3,4,5])