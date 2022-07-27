/*stampa a monitor gli elementi che sono all'interno del file se sono multipli di 4, compreso lo 0*/
%{
    #include <stdio.h>
%}

%%

[048]|\d*([02468][048]|[13579][26])     {printf("%d ", atoi (yytext));}
.                                       {}
%%

int main (){

    extern FILE *yyin;
 
    yyin = fopen("Input.txt", "r");

    yylex();
    return 0;

}