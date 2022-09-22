bison -d 8.y
lex 8.l
gcc lex.yy.c y.tab.c -ll
./a.out