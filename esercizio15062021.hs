primenumbers n = primenumbers1 n [] 2

primenumbers1 n ris i =
    if(n == 1)
        then ris
        else if ((rem n i) == 0)
            then (primenumbers1 (div n i) (ris ++ [i]) i)
            else (primenumbers1 n ris (i + 1))

testprime = primenumbers 12

controlloliste l l1 res =
    if ()

unionliste l l1 res = 
        if (length l == 0)
            then res ++ l1
            else if (length l1 == 0)
                then res ++ l
                else if(head l == head l1)
                    then (unionliste (tail l) (tail l1) (res ++ [head l]))
                    else if (head l < head l1)
                        then (unionliste (tail l) l1 (res ++ [head l]))
                        else (unionliste l (tail l1) (res ++ [head l1]))