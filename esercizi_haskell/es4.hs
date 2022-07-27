--BST, definizione
data BST a = Nulla | Node {

    val::a,

    left, right :: BST a

}

    deriving (Eq, Ord, Read, Show)

--base dell'albero per uso sugli esercizi
t = (Node 10 (Node 6 (Node 3 Nulla (Node 9 Nulla Nulla)) (Node 7 Nulla Nulla)) (Node 20 Nulla (Node 29 Nulla Nulla)))

{-1. calcolare la somma dei valori di un albero-}

sommaalbero Nulla = 0 -- poniamo un valore 0 per avere il void
sommaalbero (Node r left right) = r + (sommaalbero left) + (sommaalbero right)

testalberosomma = sommaalbero t

{-2. calcolare la somma dei valori dispari di un albero-}

sommadispari Nulla = 0
sommadispari (Node r left right) = 
    if (odd r) --elimina i pari
        then r + sommadispari left + sommadispari right
        else sommadispari left + sommadispari right

testsommadispari = sommadispari t

{-3. inserimento di un valore x in un albero t-}

inserimento x Nulla = (Node x Nulla Nulla)
inserimento x (Node r left right) =
    if (x == r)
        then (Node r left right)
        else if (x >= r)
            then (Node r left (inserimento x right))
            else (Node r (inserimento x left) right)

alberoesempio = (Node 7 (Node 5 Nulla Nulla) (Node 16 Nulla Nulla))
testinserimento = inserimento 2 alberoesempio