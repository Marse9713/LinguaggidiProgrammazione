
%{ 
	#include "6.tab.h"
	#include <string.h> 

	struct Albero;
	typedef struct Albero Albero;
%}
 
%%

[0-9]+   				            {yylval.txt = strdup(yytext); return Numero;}
"let"                               {yylval.txt = strdup(yytext); return Let;}
"in"                                {yylval.txt = strdup(yytext); return In;}
"case"                              {yylval.txt = strdup(yytext); return Case;}
"of"                                {yylval.txt = strdup(yytext); return Of;}
[a-zA-Z0-9]* 						{yylval.txt = strdup(yytext); return ID;}
";"						            {yylval.txt = strdup(yytext); return Fine;}
"="									{yylval.txt = strdup(yytext); return Uguale;}
"->"								{yylval.txt = strdup(yytext); return Freccia;} 			     		
.                                   ;

%%

int yywrap (void)  
{
	return 1;
}
