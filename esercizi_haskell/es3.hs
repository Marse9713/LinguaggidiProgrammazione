{-1. matrice ben formata o (-1,-1)-}

matrix_dim l = matrix_dm1 l (length l)


matrix_dm1 l rows = 
    if(rows == 0)
        then (length l, length  l)
        else if (length l == 0)
            then (-1, -1)
            else (matrix_dm2 l rows (length (head l)) 1 (tail l))

matrix_dm2 l rows c i l1 = 
    if(rows == i)
    then (matrix_dm1 l 0)
    else if (length (head l1) /= c)
        then (matrix_dm1 [] rows)
        else (matrix_dm2 l rows c (i + 1) (tail l1))

testmatrice = matrix_dim [[0, 8, 8, 9], [4, 3, 2, 2], [2, 3, 1, 7]]
testmatricerror = matrix_dim [[0, 8, 8, 9, 1], [1, 4, 3, 2, 2], [2, 3, 1, 7]]


{-2. somma valori colonne-}

colsums l = colsums1 l 0 0 []

colsums1 l c r ris= 
    if(r == (length (head l)))
        then reverse ris
        else (colsums1 l c (r + 1) ((sumteste l c r 0) ++ ris))

sumteste l c r s = 
    if(c == length l)
    then s:[]
    else (sumteste l (c + 1) r (((l !! c) !! r) + s))  -- + (sumteste l (c + 1) r) return di un int

testhead = colsums [[0, 8, 8, 9], [4, 3, 2, 2], [2, 3, 1, 7]]


{-3. minmax per colonna (min, max)-}

colminmax list = colminmax1 list [] [] 0 0

colminmax1 l res aux r c =
    if (c == length (head l))
        then res
        else if (r == length l)
            then (colminmax1 l (res ++ (minmaxcol aux):[]) [] 0 (c + 1))
            else (colminmax1 l res (((l !! r) !! c) : aux) (r + 1) c)

minmaxcol list = minmaxcol1 list 0 []

minmaxcol1 l x aux =
    ((,) (calcmin l (head l) 1) (calcmax l (head l) 1))

calcmin l min i =
    if (i == length l)

calcmin l min i = 
    if(length l - 1 == i)
        then min
        else if (min <= (l !! i))
            then (calcmin l min (i + 1))
            else (calcmin l (l !! i) 0) 

calcmax l max i = 
    if(length l - 1== i)
        then max
        else if (max >= (l !! i))
            then (calcmax l max (i + 1))
            else (calcmax l (l !! i) 0)

calcmax l max i =
    if (i == length l)
        then max
        else if (max >= (l !! i))
            then (calcmax l max (i + 1))
            else (calcmax l (l !! i) 0)


testminmax = colminmax [[1, 2, 3, 4], [8, 2, 3, 5], [2, 5, 7, 8], [5, 7, 8, 9]]