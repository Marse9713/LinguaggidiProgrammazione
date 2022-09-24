bison -d 5.y
lex 8.l
gcc lex.yy.c 5.tab.c
./a.out