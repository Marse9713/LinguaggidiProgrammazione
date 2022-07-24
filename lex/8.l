
%{
   #include <stdio.h>
   #include <stdlib.h>
%}

%%
(\+|-)[0-9]+			{ printf(" %d è un decimale\n", atoi(yytext) ); }
[0-9]                { printf(" %d è un decimale\n", atoi(yytext) ); }
[0-9a-fA-F]+[H]	 		{ printf(" 0x%0lX è un esadecimale\n", strtol(yytext, NULL, 16) ); }
[0][x][0-9a-fA-F]+		{ printf(" 0x%0lX è un esadecimale\n", strtol(yytext, NULL, 16) ); }
[o|O][0-7]+				{ printf(" %ld è un ottale\n", strtol(yytext, NULL, 8) ); }
[0-7]+[O]				{ printf(" %ld è un ottale\n", strtol(yytext, NULL, 8) ); }
%%

main(int argc, const char *aArgv[])
{
   yylex();
   return 0;
}

int yywrap()
{
   return(1);
}