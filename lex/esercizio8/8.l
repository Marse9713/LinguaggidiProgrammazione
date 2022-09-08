
%{
   #include <stdio.h>
   #include <stdlib.h>
%}

%%
(\+|-)[0-9]+			{ printf(" %s è un decimale\n", yytext); }
[0-9a-fA-F]+[hH]	 		{ printf(" 0x%s è un esadecimale\n", yytext); }
[0][x|X][0-9a-fA-F]+		{ printf(" 0x%s è un esadecimale\n", yytext); }
[o|O][0-7]+				{ printf(" %s è un ottale\n", yytext); }
[0-7]+[O]				{ printf(" %s è un ottale\n", yytext); }
.|\n                 {}
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