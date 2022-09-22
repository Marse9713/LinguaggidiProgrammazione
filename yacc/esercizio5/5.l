
%{ 
	#include "5.tab.h"
	#include <string.h> 

	struct Tree;
	typedef struct Tree Tree;
%}
 
%%

[0-9]+   				{yylval.txt = strdup(yytext); return NUMERO;}
"if"					{yylval.txt = strdup(yytext); return IF;}
"else"					{yylval.txt = strdup(yytext); return ELSE;}
"while"					{yylval.txt = strdup(yytext); return WHILE;}
[a-z]+[a-zA-z0-9]*		{yylval.txt = strdup(yytext); return IDENT;}
"="					    {yylval.txt = strdup(yytext); return ASSEGN;}
"+="					{yylval.txt = strdup(yytext); return INCREM;}
";"						{yylval.txt = strdup(yytext); return SEPARATORE;}
"("						{yylval.txt = strdup(yytext); return '(';}
")"						{yylval.txt = strdup(yytext); return ')';}
"{"						{yylval.txt = strdup(yytext); return '{';}
"}"						{yylval.txt = strdup(yytext); return '}';}

.  			     		;

%%

int yywrap (void)  
{
	return 1;
}
