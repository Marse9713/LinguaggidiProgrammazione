%{

    #include "y.tab.h"
    #include <string.h>

    struct Tree;
    typedef struct Tree Tree;

%}

%%
[0-9]+                  {yylval.txt = strdup(yytext); return NUMERO;}
"="                     {yylval.txt = strdup(yytext); return ASSEGNAZIONE;}
"+="                    {yylval.txt = strdup(yytext); return INCREMENTO;}
"if"                    {yylval.txt = strdup(yytext); return IF;}
"else"                  {yylval.txt = strdup(yytext); return ELSE;}
"while"                 {yylval.txt = strdup(yytext); return WHILE;}
";"                     {yylval.txt = strdup(yytext); return FINERIGA;}
[a-z]+[a-zA-z0-9]*		{yylval.txt = strdup(yytext); return ID;}
"("                     {yylval.txt = strdup(yytext); return '(';}
")"                     {yylval.txt = strdup(yytext); return ')';}
"{"                     {yylval.txt = strdup(yytext); return '{';}
"}"                     {yylval.txt = strdup(yytext); return '}';}

.               {}
%%

int yywrap (void){

    return 1;

}

