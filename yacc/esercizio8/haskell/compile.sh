rm 8has 8has.hi 8has.o 8has.hs lexer.hi lexer.hs lexer.o
happy 8has.y
alex lexer.x
ghc 8has.hs lexer.hs
./8has