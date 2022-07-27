--alberi generici, definizione

data Albero a = Nulla | Nodo a [Albero a]

    deriving (Eq, Show)
albero = (Nodo 4 [(Nodo 3 [(Nodo 1 [])]), (Nodo 6 []), (Nodo 15 [(Nodo 1 [(Nodo 2 [(Nodo 3 [])])])])])

{-1. generalizzazione di foldr delle liste per alberi generici-}

alberofold f n Nulla = n
alberofold f n (Nodo a lt) = f a (map (alberofold f n) lt) --prendo i valori interi, se nulli non li considero

testalberofold = (alberofold (\x l -> x + (sum l)) 0 albero)

{-2. calcolo altezza dell'albero, massima stringa più lunga senza [] tra un valore e l'altro-}

height albero = (alberofold (\x l -> 1 + (altezzamax l)) (-1) albero)

altezzamax [] = -1 --se vuoto, l'albero darà -1
altezzamax l = maximum l

controllo n = height ( Nodo 'a' $ replicate n Nulla ) --darà sempre 0
testaltezza = height albero

{-3. eliminazione figli Nulla ridondanti-}

simplify all@(Nodo a lt) = alberofold (\x l -> (Nodo x (noNullo l))) Nulla all

noNullo [] = [] -- se vuoto
noNullo l = 
    if (head l == Nulla)
        then (noNullo (tail l)) --mi ritorna solo il resto
        else (head l) : (noNullo (tail l)) --mi torna solo il valore se non è doppio nullo

testeliminazione = simplify alberodasemplificare

alberodasemplificare = (Nodo 1 [Nulla, (Nodo 10 [Nulla]),(Nodo 7 [Nulla, Nulla])])