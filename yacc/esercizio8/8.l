%{

    #include "y.tab.h"
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
[a-zA-Z]+([a-zA-Z0-9]|"-"|"_")* {yylval.txt = strdup(yytext); return ID;}
"="                             {yylval.txt = strdup(yytext); return EQUIVALENZA;}
[0-9]+                          {yylval.txt = strdup(yytext); return NUMERO;}
\n                              {yylval.txt = strdup(yytext); return FINERIGA;}

%%

int main(){
    
    extern FILE *yyin, *yyout;
 
    yyin = fopen("Input.txt", "r");

    yylex();
    return 0;

}

int yywrap (void){

    return 1;

}