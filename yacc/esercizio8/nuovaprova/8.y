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

    void printTree (Tree* t, int s){

        printf("%*s%s\n", s, "", t->top);

        for(int i = 0; i < ARIETA; i++){

            if (!t->subTrees[i]) 
            continue;

            printTree(t->subTrees[i], s + 3);


        }

    }
    
%}

%union 		{char* txt; struct Tree* tp;}

%start		input
%token     	NUMERO
%token     	IDENTIFICATORE
%token      LET
%token     	CASE
%token      ELSE
%token 		MOLTIPLICAZIONE
%token	 	SOMMA
%token	 	DIFFERENZA
%token	 	EQUIVALENZA
%token     	'('
%token	 	')'
%token      '['
%token      ']'

%left DIFFERENZA SOMMA
%left '*'
%left NEG

%type <txt> NUMERO IDENTIFICATORE CASE LET DIFFERENZA SOMMA EQUIVALENZA MOLTIPLICAZIONE'(' ')'
%type <tp> input blocco espressione

%%

input :                                     {} 
    | IDENTIFICATORE                        {printf("IDENTIFICATORE");}
    | NUMERO                                {printf("NUMERO");}
    | blocco                                {printf("\n"); printTree($1, 0); printf("\n");}
    ;

blocco : espressione                      {$$ = makeTree("BLOCCO", $1, NULL, NULL, NULL, NULL, NULL);}
    | '(' espressione ')'                 {$$ = makeTree("BLOCCO", makeTree ($1, NULL, NULL, NULL, NULL, NULL, NULL), $2, makeTree($3, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL);}
    ;

espressione : SOMMA                    {$$ = makeTree("SOMMA", $1, NULL, NULL, NULL, NULL, NULL);}
    | DIFFERENZA input                 {$$ = makeTree("DIFFERENZA", $1, NULL, NULL, NULL, NULL, NULL);}
    | EQUIVALENZA input                {$$ = makeTree("EQUIVALENZA", $1, NULL, NULL, NULL, NULL, NULL);}
    | MOLTIPLICAZIONE input            {$$ = makeTree("MOLTIPLICAZIONE", $1, NULL, NULL, NULL, NULL, NULL);}
    | LET input                        {$$ = makeTree("LET", $1, NULL, NULL, NULL, NULL, NULL);}
    ;


%%   

int main (void) {
	yyparse();
	return 0;
}

void yyerror (char *s) {
	printf("%s\n", s); 
}