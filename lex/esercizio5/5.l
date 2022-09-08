/*stampa a monitor gli elementi che sono all'interno del file se sono multipli di 4, compreso lo 0*/
%{
    #include <stdio.h>
%}

divisibili_per_4          (4|8)|([0-9]*(00|04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96))


%%
{divisibili_per_4}        {printf(" %s ", yytext);}
.|\n                      {}                        
%%

int main (int argc, const char *aArgv[]){

    extern FILE *yyin;
 
    yyin = fopen("Input.txt", "r");

    yylex();
    return 0;

}

int yywrap()
{
   return(1);
}