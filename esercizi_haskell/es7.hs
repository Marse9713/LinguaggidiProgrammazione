--implementazione matrice 2^n x 2^n

data Matrice a = Matrice {

    nexp :: Int,
    matrice :: QT a --solo quad tree non tipo QT

}

    deriving(Eq, Show)

--quadtree

data QT a = C a | Q (QT a) (QT a) (QT a) (QT a)

    deriving (Eq, Show)

{-1. lowertriangular, matrice triangolare inferiore-}

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