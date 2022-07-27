%{
    #include <stdio.h>
%}

 /*qua andranno i token */

%%

[048]|\d*([02468][048]|[13579][26])     {printf("%d ", atoi (yytext));}
.                                       {}
%%


/*codice c */

int main (){

    extern FILE *yyin;
 
    yyin = fopen("Input.txt", "r");

    yylex();
    return 0;

}