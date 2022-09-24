bison -d 8.y
lex 8.l
gcc lex.yy.c 8.tab.c -ll
./a.out