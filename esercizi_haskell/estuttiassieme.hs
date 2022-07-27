{-esercizio 1 1.esercizio fattoriale 10000!-}

fattoriale 0 = 1
fattoriale n = n * fattoriale (n - 1)

testfattoriale = fattoriale 10000

{-2.esercizio sulla funzione di combinazione di k elementi su n
devo fare (n! / k! * (n-k)!) binomiale-}

numeratore = fattoriale -- eseguo il fattoriale su n

denominatore n k = fattoriale k * fattoriale (n - k) -- eseguo il fattoriale su k

combinatorio n k = numeratore n / denominatore n k

testcombinatorio = combinatorio 5 3

{-3.esercizio del calcolo di tutte le combinazioni su n elementi-}

combinazioni list 0 = [[]]
combinazioni [] n = []

combinazioni (x : xs) n = map (x :) (combinazioni xs (n - 1)) ++ (combinazioni xs n)

testcombo = combinazioni [1, 2, 3, 4] 3

-------------------------------------------------------------------------------------------

{-esercizio 2 1.lista con eliminazione pari-}
rimuovipari l = rimuovipari1 l 1 []

rimuovipari1 l i aux = 
    if(length l == 0)
        then (reverse aux)
        else if (i == 1)
            then (rimuovipari1 (tail l) 2 ((head l):aux))
            else (rimuovipari1 (tail l) 1 aux)

testrimuovipari = rimuovipari [1, 2, 3, 4, 5, 6]

{-2. somma dispari-}

sumdispari l = sum1 (rimuovipari l) 0

sum1 l ris = 
    if(length l == 0)
        then ris
        else (sum1 (tail l) (ris + head l))

testsumdispari = sumdispari [1, 2, 3, 4, 5, 6]

{-3. quicksort polimorfo-}

quicksort [] = []
quicksort (x : xs) = 
    quicksort [y | y <- xs, y < x] ++ x : quicksort [y | y <- xs, y >= x]

testquick = quicksort [3, 1, 4, 2]
testquick1 = quicksort ["mandi", "boiate", "avvinazato", "dioboe"]

{-4. calcolo degli odd più piccoli (min, min)-}

minOdd list = (couple (quicksort (filter odd list)) [])

couple l aux =
    if (length aux == 2)
        then (reverse aux)
        else couple (tail l) ((head l):aux)

testmin = minOdd[8, 5, 7, 1, 4, 6, 9]

{-5. lista di coppie (numero pos or, somma successivi)-}

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

{-6. lista coppie (numero pos or, somma antecedenti)-}

coppianti l = reverse (coppia1 (reverse l) [])

testcpprev = coppianti [1,2,3,4]

-------------------------------------------------------------------------------------------

{- esercizio 3 1. matrice ben formata o (-1,-1)-}

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
    if(length l == i)
        then min
        else if (min <= (l !! i))
            then (calcmin l min (i + 1))
            else (calcmin l (l !! i) 0) 

calcmax l max i = 
    if(length l == i)
        then max
        else if (max >= (l !! i))
            then (calcmax l max (i + 1))
            else (calcmax l (l !! i) 0)

testminmax = colminmax [[1, 2, 3, 4], [8, 2, 3, 5], [2, 5, 7, 8], [5, 7, 8, 9]] --(1,8), (2,7), (3,8), (4,9)

-------------------------------------------------------------------------------------------

--BST, definizione
data BST a = Nulla | Node {

    val::a,

    left, right :: BST a

}

    deriving (Eq, Ord, Read, Show)

--base dell'albero per uso sugli esercizi
t = (Node 10 (Node 6 (Node 3 Nulla (Node 9 Nulla Nulla)) (Node 7 Nulla Nulla)) (Node 20 Nulla (Node 29 Nulla Nulla)))

{- esercizio 4 1. calcolare la somma dei valori di un albero-}

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

-------------------------------------------------------------------------------------------

--alberi generici, definizione

data Albero a = Nul | Nodo a [Albero a]

    deriving (Eq, Show)
albero = (Nodo 4 [(Nodo 3 [(Nodo 1 [])]), (Nodo 6 []), (Nodo 15 [(Nodo 1 [(Nodo 2 [(Nodo 3 [])])])])])

{- esercizio 5 1. generalizzazione di foldr delle liste per alberi generici-}

alberofold f n Nul = n
alberofold f n (Nodo a lt) = f a (map (alberofold f n) lt) --prendo i valori interi, se nulli non li considero

testalberofold = (alberofold (\x l -> x + (sum l)) 0 albero)

{-2. calcolo altezza dell'albero, massima stringa più lunga senza [] tra un valore e l'altro-}

height albero = (alberofold (\x l -> 1 + (altezzamax l)) (-1) albero)

altezzamax [] = -1 --se vuoto, l'albero darà -1
altezzamax l = maximum l

controllo n = height ( Nodo 'a' $ replicate n Nul ) --darà sempre 0
testaltezza = height albero

{-3. eliminazione figli Nulla ridondanti-}

simplify all@(Nodo a lt) = alberofold (\x l -> (Nodo x (noNullo l))) Nul all

noNullo [] = [] -- se vuoto
noNullo l = 
    if (head l == Nul)
        then (noNullo (tail l)) --mi ritorna solo il resto
        else (head l) : (noNullo (tail l)) --mi torna solo il valore se non è doppio nullo

testeliminazione = simplify alberodasemplificare

alberodasemplificare = (Nodo 1 [Nul, (Nodo 10 [Nul]),(Nodo 7 [Nul, Nul])])

-------------------------------------------------------------------------------------------

--quad tree definizione

data QT a = C a | Q (QT a) (QT a) (QT a) (QT a)

    deriving (Eq, Show)

{- esercizio 6 1. buildNSimplify costruire quad tree da 4 quad tree-}

buildNSimplify q1 q2 q3 q4 = Q (q1) (q2) (q3) (q4) --unione dei quadtree

q1 = (Q (C 1) ((Q (C 1) (C 2) (C 3) (C 3))) (C 1) (C 2))
q2 = (Q (C 1) (C 2) (C 3) (Q (C 2) (C 3) (C 4) (C 5)))
q3 = (C 1)
q4 = (Q (C 3) (C 3) (C 3) (C 3))

testNS = buildNSimplify q1 q2 q3 q4

{-2. generatore di QT-}

simplifya (C a) = (C a)
simplifya qt@(Q (C x) (C y) (C w) (C z)) =
    if (uguali [x, y, w, z])
        then (C x)
        else qt

simplifya qt@(Q ul ur dl dr) = (Q (simplifya ul) (simplifya ur) (simplifya dl) (simplifya dr))

uguali [] = True
uguali [x] = True
uguali l =
    if (l == tail l)
        then (uguali (tail l))
        else False

testsimplify = simplifya (buildNSimplify q1 q2 q3 q4)

-------------------------------------------------------------------------------------------

--implementazione matrice 2^n x 2^n

data Matrice a = Matrice {

    nexp :: Int,
    matrice :: QT a --solo quad tree non tipo QT

}

    deriving(Eq, Show)

{-esercizio 7 1. lowertriangular, matrice triangolare inferiore-}

lowertriangular (Matrice 0 (C a)) = True
lowertriangular (Matrice _ (C a)) = False
lowertriangular (Matrice x (Q ss sd is id)) =
    (lowertriangular (Matrice (x - 1) ss)) && (vuoto (Matrice (x - 1) sd))
    && (lowertriangular (Matrice (x - 1) id))

vuoto (Matrice _ (C a)) = 
    if (a == 0)
        then True
        else False

testtriangolareinf = lowertriangular (Matrice 2 (Q (Q (C 1) (C 0) (C 1) (C 1)) (C 0) (C 1) (Q (C 1) (C 0) (C 1) (C 1))))

{-2. uppertriangular, triangolare superiore-}

uppertriangular (Matrice 0 (C a)) = True
uppertriangular (Matrice _ (C a)) = False
uppertriangular (Matrice x (Q ss sd is id)) = (uppertriangular (Matrice (x - 1) ss)) && (uppertriangular (Matrice (x - 1) id))

testtraingolaresup = uppertriangular (Matrice 1 (Q (C 1) (C 0) (C 0) (C 1)))