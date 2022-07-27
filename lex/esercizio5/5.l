%{
    #include <stdio.h>
    #include <stlib.h>
%}

 /*qua andranno i token */

%%

[048]|\d*([02468][048]|[13579][26])     {fprint("%d\n", atoi (yytext));}
.
%%


/*codice c */

int main (){

    extern FILE *yyin, *yyout;
 
    yyin = fopen("Input.txt", "r");

    yyout = fopen("Output.txt", "w");

    yylex();
    return 0;

}

int yywrap()
{
   return(1);
}