%{
    #include <stdio.h>
    #include <string.h>
    #include <stdlib.h>
    #define ARIETA 6 /* l'arità dell'albero è nota a priori ed è pari alla lunghezza della regola più lunga */

    void yyerror (char *s);
    int yylex();

    /*definisco l'albero di parsing */

    struct Tree;
    typedef struct Tree Tree;

    struct Tree {

        char* top;
        Tree* subTrees[ARIETA];

    };

    Tree* makeTree (char* top, Tree* T1, Tree* T2, Tree* T3, Tree* T4, Tree* T5, Tree* T6) {

        Tree* res = (Tree*) malloc(sizeof(Tree));
        res->top = top;
        res->subTrees[0] = T1;
        res->subTrees[1] = T2;
        res->subTrees[2] = T3;
        res->subTrees[3] = T4;
        res->subTrees[4] = T5;
        res->subTrees[5] = T6;

        return res;

    }

    /*procedura per la stampa dell'albero */

    void printTree (Tree* T, int s){

        printf("%*s%s\n", s, "", T->top);

        for(int i = 0; i < ARIETA; i++){

            if (!t->subTrees[i]) 
            continue;

            printTree(t->subTrees[i], s + 3);


        }

    }
    
%}

%union 		{char* txt; struct Tree* tp;}

%start		input
%token     	ID
%token      LET
%token     	NUMERO
%token 		MOLTIPLICAZIONE
%token	 	SOMMA
%token     	CASE
%token	 	DIFFERENZA
%token     	'(' ')'
%token	 	EQUIVALENZA
%token	 	FINERIGA
%token      '[' ']'
%token      BREAK;

%left DIFFERENZA SOMMA
%left '*'
%left NEG

%type <txt> NUMERO CASE LET DIFFERENZA ID ASSIGNAZIONE SOMMA '[' ']' '(' ')' '{' '}'  FINERIGA

%%

input:
   | input linea
;

linea : '\n'
   | espressione '\n'       
   ;


coppia: ID ID 
   |  ID NUMERO
   |  NUMERO ID
   |  NUMERO NUMERO
   ;

assegnamento:
   | '(' ID NUMERO ')'      {printf("'(' ID NUMERO ')'\n");}
   ;

lista_di_coppie: 
   lista_di_coppie ID
   | lista_di_coppie NUMERO
   | coppia
   ;

lista_di_coppie: lista_di_coppie assegnamento 
   | assegnamento
   ; 

definizione:
   | '(' SOMMA coppia ')'                                               {printf("'(' + SOMMA + COPPIA + ')'\n");} 
   | '(' DIFFERENZA coppia ')'                                           {printf("'(' + DIFFERENZA + coppia +  ')'\n");} 
   | '(' '*' coppia ')'                                           {printf("'(' '*' coppia ')'\n");} 

   | '(' '=' lista_di_coppie ')'                                      {printf("'(' = lista_di_coppie ')'\n");}
   ;

lista_di_definizioni: lista_di_definizioni definizione
   | definizione
   ;

espressione:
   lista_di_definizioni                                                            
   | blocco_lista                                                               
   | '(' SOMMA  blocco_lista ')'                                          { printf("( + espressione '')'\n"); } 
   | '(' DIFFERENZA  blocco_lista ')'                                          { printf("'(' - espressione '')'\n"); } 
   | '(' MOLTIPLICAZIONE  blocco_lista ')'                                          { printf("'(' MOLTIPLICAZIONE espressione ')'\n"); } 
   | '(' LET '('    lista_di_coppie   ')' espressione ')'               {printf("'(' LET '(' lista_di_coppie ')' espressione ')'\n");} 
   | '(' LET ID '('    lista_di_coppie   ')' espressione ')'   {printf("'(' LET ID '(' lista_di_coppie ')' espressione ')'\n");}
   | '(' CASE definizione blocco_lista ')'                            { printf("'(' CASEdefinizione espressione ')'\n");}
   | BREAK                                                                   {exit(0);} 
   ;

blocco:
   | '(' SOMMA  definizione definizione ')'                         { printf("'(' + definizione definizione ')'\n"); } 
   | '(' DIFFERENZA  definizione definizione ')'                         { printf("'(' - definizione definizione ')'\n"); }
   | '(' MOLTIPLICAZIONE definizione definizione ')'                         { printf("'(' * definizione definizione ')'\n"); }
   | '[' espressione ']'                                     { printf("'[' espressione ']'\n"); }
   ;

blocco_lista: blocco_lista blocco
   | blocco
   ;

%%


int main (void) {
	yyparse();
	return 0;
}

void yyerror (char *s) {
	printf("%s\n", s); 
}