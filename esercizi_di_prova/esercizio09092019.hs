takeliste l l1 = unionliste l l1 []

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

testunione = takeliste [1, 2, 3, 4] [1, 5, 6, 7]