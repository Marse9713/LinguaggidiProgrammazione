--BST, definizione
data BST a = Null | Node {

    val::a,

    left, right :: BST a

}

    deriving (Eq, Ord, Read, Show)

--base dell'albero per uso sugli esercizi
t = (Node 10 (Node 6 (Node 3 Null (Node 9 Null Null)) (Node 7 Null Null)) (Node 20 Null (Node 29 Null Null)))

{-1. calcolare la somma dei valori di un albero-}

sommaalbero Null = 0 -- poniamo un valore 0 per avere il void
sommaalbero (Node r left right) = r + (sommaalbero left) + (sommaalbero right)

testalberosomma = sommaalbero t

{-2. calcolare la somma dei valori dispari di un albero-}

sommadispari Null = 0
sommadispari (Node r left right) = 
    if (odd r) --elimina i pari
        then r + sommadispari left + sommadispari right
        else sommadispari left + sommadispari right

testsommadispari = sommadispari t

{-3. inserimento di un valore x in un albero t-}

inserimento x Null = (Node x Null Null)
inserimento x (Node r left right) =
    if (x == r)
        then (Node r left right)
        else if (x >= r)
            then (Node r left (inserimento x right))
            else (Node r (inserimento x left) right)

alberoesempio = (Node 7 (Node 5 Null Null) (Node 16 Null Null))
testinserimento = inserimento 2 alberoesempio