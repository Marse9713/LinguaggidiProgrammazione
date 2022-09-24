%{
    #include "8.tab.h"
    #include <string.h>

    struct Tree;
    typedef struct Tree Tree;
%}

%%

"+"                             {yylval.txt = strdup(yytext); return SOMMA;}
"-"                             {yylval.txt = strdup(yytext); return DIFFERENZA;}
"*"                             {yylval.txt = strdup(yytext); return MOLTIPLICAZIONE;}
let                             {yylval.txt = strdup(yytext); return LET;}
case                            {yylval.txt = strdup(yytext); return CASE;}
else                            {yylval.txt = strdup(yytext); return ELSE;}
"("                             {yylval.txt = strdup(yytext); return '(';}
")"                             {yylval.txt = strdup(yytext); return ')';}
"["                             {yylval.txt = strdup(yytext); return '[';}
"]"                             {yylval.txt = strdup(yytext); return ']';}
[0-9]*                          {yylval.txt = strdup(yytext); return NUMERO;}
[a-zA-Z]+[a-zA-Z0-9]*           {yylval.txt = strdup(yytext); return IDENTIFICATORE;}
"="                             {yylval.txt = strdup(yytext); return EQUIVALENZA;}
.                               ;

%%

int yywrap (void){

    return 1;

}