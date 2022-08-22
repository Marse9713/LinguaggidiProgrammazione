rm y.tab.c y.tab.h lex.yy.c a.out
bison -d 5.y
lex 5.l
gcc lex.yy.c y.tab.c -ll
./a.out