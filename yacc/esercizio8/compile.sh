rm y.tab.c y.tab.h lex.yy.c a.out
bison -d esercizio8.y
lex es_3.l
gcc lex.yy.c y.tab.c -ll
./a.out