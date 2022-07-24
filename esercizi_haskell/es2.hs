{-scrivere una funzione che data una lista ne costruis
una rimuovendo gli elementi di posizione pari-}

rimuovipari l = rimuovipari1 l 1 []

rimuovipari1 l i aux = 
    if(length l == 0)
        then (reverse aux)
        else if (i == 1)
            then (rimuovipari1 (tail l) 2 ((head l):aux))
            else (rimuovipari1 (tail l) 1 aux)

testrimuovipari = rimuovipari [1, 2, 3, 4, 5, 6]

{-scrivere una funzione che calcoli la somma degli elementi
dispari della lista-}

sumdispari l = sum1 (rimuovipari l) 0

sum1 l ris = 
    if(length l == 0)
        then ris
        else (sum1 (tail l) (ris + head l))

testsumdispari = sumdispari [1, 2, 3, 4, 5, 6]

{-quicksort polimorfo, quindi esegue l'ordinamento anche su stringhe o altro-}

quicksort [] = []
quicksort (x : xs) = 
    quicksort [y | y <- xs, y < x] ++ x : quicksort [y | y <- xs, y >= x]

testquick = quicksort [3, 1, 4, 2]
testquick1 = quicksort ["mandi", "boiate", "avvinazato", "dioboe"]

{-calcolo degli odd più piccoli (2)-}

minOdd list = (couple (quicksort (filter odd list)) [])

couple l aux =
    if (length aux == 2)
        then (reverse aux)
        else couple (tail l) ((head l):aux)

testmin = minOdd[8, 5, 7, 1, 4, 6, 9]

{-lista di coppie-}

coppia l = coppia1 l []

coppia1 l aux =
    if (length l == 0)
        then (reverse aux)
        else coppia1 (tail l) (((,) (head l) (couplecreate (tail l) 0 (head l))) : aux)

couplecreate l s i =
    if (length l == 0)
        then s
        else (couplecreate (tail l) (head l + s) i)


testcpp = coppia [1,2,3,4]