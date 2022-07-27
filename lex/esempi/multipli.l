
%{

#include <stdio.h>

%}


%%

(0+($+0(1+00*1)+1(01*0)*1)(0(1+00*1)+1(01*0)*1)*0)(0+00*(0+$))			{printf("[Prova, %s]\n", yytext);}
 
.|\n						{}

%%

int main(int argc, const char *aArgv[])
{
    yylex();
    return 0;
}

int yywrap()
{
   return(1);
}
