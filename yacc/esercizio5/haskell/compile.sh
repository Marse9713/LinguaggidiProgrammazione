rm 5has 5has.hi 5has.hs 5has.o lexer.hi lexer.hs lexer.o
happy 5has.y
alex lexer.x
ghc 5has.hs lexer.hs
./5has