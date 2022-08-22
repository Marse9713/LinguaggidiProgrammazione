appartieneres list n = appartiene2 list n 0

appartiene2 l n i =
    if((appartiene1 l n i) < length l)
        then True
        else False

appartiene1 l n i =
    if(length l <= i)
        then (i + 1)
        else if ((l !! i) == n)
            then i
            else (appartiene1 l n (i + 1))

testapp = appartieneres [1, 25, 16, 28, 89, 55] 68

eliminazione l n = eliminazione1 l n []

eliminazione1 l n aux =
    if ((appartiene1 l n 0) == 0)
        then (aux ++ (tail l))
        else (eliminazione1 (tail l) n (aux ++ [head l]))

testeliminazione = eliminazione [1, 25, 16, 28, 89, 55] 28

permacheck l l1 = 
    if(length l1 == 0)
        then True
        else if (appartieneres l (head l1))
            then permacheck l (tail l1)
            else False

testperma = permacheck [1, 2, 3, 4] [4, 5, 2, 1]

matrixcheck m =
    if length m == 1
        then True
        else if (permacheck (head m) (head (tail m)))
            then matrixcheck (tail m)
            else False

testmatrice = matrixcheck [[1,2,3,4], [2,3,4,1], [4,1,2,3]]