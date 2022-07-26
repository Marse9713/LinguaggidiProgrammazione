--check stringa palindroma

checkpalindroma l = checkpalindroma1 l (reverse l)

checkpalindroma1 l l1 =
    if(length l == 0 && length l1 == 0)
        then True
        else if(head l == head l1)
            then (checkpalindroma1 (tail l) (tail l1))
            else False

testpal = checkpalindroma [1, 2, 2, 4]

--check matrix palindroma (tra righe devono essere palindrome)
checkmatrix m = 
    if (length m == 0)
        then True
        else if (checkpalindroma (head m))
        then checkmatrix (tail m)
        else False

testmat = checkmatrix [[1,2,2,1], [2,3,3,2], [4,1,1,4]]

--palindroma rispetto a verticale (colonne palindrome)

--colmatrix l = colmatrix1 l []

colrig l = colrig1 l []
testcol = colrig [1, 2, 3, 4]