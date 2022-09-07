matrice :: [[a]] -> [[a]]
matrice list = matrice1 (tail list) []

matrice1 :: [[a]] -> [[a]] -> [[a]]
matrice1 list aux =
    if length list == 0
        then aux
        else matrice1 (tail list) (aux ++ (tail (head list)):[])


test = matrice [[0, 8, 8, 9, 1], [1, 4, 3, 2, 2], [2, 3, 1, 7, 6]]

{-seconda parte-}

diagonale_matrice :: [[a]] -> [a]
diagonale_matrice list = diagonale_1 list 0 []


diagonale_1 :: [[a]] -> Int -> [a] -> [a]
diagonale_1 l i aux =
    if length l == 0
        then aux
        else diagonale_1 (tail l) (i + 1) (aux ++ (head l !! i):[])

test2 = diagonale_matrice [[0, 8, 8, 9, 1], [1, 4, 3, 2, 2], [2, 3, 1, 7, 6]]