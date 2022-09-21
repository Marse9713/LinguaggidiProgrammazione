generaraCoppia nEsercizi matricola = (primo, secondo) where 
  primo = matricola `mod` nEsercizi + 1
  secondo = (matricola `mod` (nEsercizi - 3) + primo + 1) `mod`  nEsercizi + 1

testcoppia :: (Integer, Integer)
testcoppia = generaraCoppia 9 143087 --5,8
