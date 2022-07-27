{-scrivere una funzione matrix_dim che data una matrice
calcola se è ben formata, altrimenti restituisce (-1,-1)
-}

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


{-Scrivere una funzione che calcoli una funzione colsums
che somma tutti i valori delle singole colonne-}

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


{-colminmax per colonna-}

minmax l = minmax1 l 0 0 [] []

minmax l r c col res=
    if(c == length (head l))
        then res
        else if ()

coupleminmax l min max i =
    ((,) (calcmin l m i)(calcmax l max i))

calcmin l min i = 
    if(length l - 1== i)
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



testminmax = creatorecolonne [[0, 8, 8, 9], [4, 3, 2, 2], [2, 3, 1, 7]]