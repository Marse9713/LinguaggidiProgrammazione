--esercizio fattoriale 10000!
--per eseguire il fattoriale va moltiplicato ogni
--numero fino al numero desiderato (esempio 5 * 4 * 3 * 2 * 1)


fattoriale :: (Eq p, Num p) => p -> p

fattoriale 0 = 1
fattoriale n = n * fattoriale (n - 1)

testfattoriale :: Integer

testfattoriale = fattoriale 10000


------------------------------------------------------------------------


--esercizio sulla funzione di combinazione di k elementi su n
--devo fare (n! / k! * (n-k)!) binomiale


numeratore :: (Eq p, Num p) => p -> p

numeratore = fattoriale -- eseguo il fattoriale su n

denominatore :: (Num p, Eq p) => p -> p -> p

denominatore n k = fattoriale k * fattoriale (n - k) -- eseguo il fattoriale su k

combinatorio :: (Fractional p, Eq p) => p -> p -> p -- compongo il tutto

combinatorio n k = numeratore n / denominatore n k

testcombinatorio :: Double -- molto grande come valore, quindi necessario
testcombinatorio = combinatorio 5 3


------------------------------------------------------------------------


--esercizio del calcolo di tutte le combinazioni su n elementi
--va sommato ogni elemento all'interno della lista quindi da poter verificare
--che tutte le combinazioni siano rispettate

--factorial n = go n 1
   -- where
   -- go n res
     --   | n > 1     = go (n - 1) (res * n)
       -- | otherwise = res

--combo :: [a] -> Int -> [a]
combo :: [a] -> Int -> [a]
--combo a k = (a !! k):[] --(combo a (k+1))

--combo2 :: [a] -> Int -> [a]
combo2 l = 
testcombo2 = combo2 [1, 2, 3, 4]

