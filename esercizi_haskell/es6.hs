--quad tree definizione

data QT a = C a | Q (QT a) (QT a) (QT a) (QT a)

    deriving (Eq, Show)

{-1. buildNSimplify costruire quad tree da 4 quad tree-}

buildNSimplify q1 q2 q3 q4 = Q (q1) (q2) (q3) (q4) --unione dei quadtree

q1 = (Q (C 1) ((Q (C 1) (C 2) (C 3) (C 3))) (C 1) (C 2))
q2 = (Q (C 1) (C 2) (C 3) (Q (C 2) (C 3) (C 4) (C 5)))
q3 = (C 1)
q4 = (Q (C 3) (C 3) (C 3) (C 3))

testNS = buildNSimplify q1 q2 q3 q4

{-2. generatore di QT-}

simplify (C a) = (C a)
simplify qt@(Q (C x) (C y) (C w) (C z)) =
    if (uguali [x, y, w, z])
        then (C x)
        else qt

simplify qt@(Q ul ur dl dr) = (Q (simplify ul) (simplify ur) (simplify dl) (simplify dr))

uguali [] = True
uguali [x] = True
uguali l =
    if (l == tail l)
        then (uguali (tail l))
        else False

testsimplify = simplify (buildNSimplify q1 q2 q3 q4)

