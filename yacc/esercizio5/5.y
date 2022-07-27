%{
    #include <stdio.h>
    #include <string.h>
    #include <stdlib.h>
    #define ARIETA 6 /*6 argomenti */

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
%token     	NUMERO
%token 		ASSEGNAZIONE
%token	 	INCREMENTO
%token     	IF ELSE
%token	 	WHILE
%token     	'(' ')'
%token	 	'{' '}'
%token	 	ENDASS

%type 		<txt> NUMERO IF ELSE WHILE ID ASSIGNAZIONE INCREMENTO '(' ')' '{' '}'  FINERIGA
%type       <tp> input blocks statement com elsE rval lval

%nonassoc IF
%nonassoc ELSE /*tolgo ambiguità di if else*/

%%

Sinput  :							{}
	   | blocco  								{printf("\n"); printTree($1, 0); printf("\n");} 					 
	   ;
	   
blocco : dichiarazione                    		{$$ = makeTree("BLOCCO", $1, NULL, NULL, NULL, NULL, NULL);}  
	   | dichiarazione blocco          			{$$ = makeTree("BLOCCO", $1, $2, NULL, NULL, NULL, NULL);}
	   ;  
	   
dichiarazione   : comparazione					{$$ = makeTree("DICHIARAZIONE", $1, NULL, NULL, NULL, NULL, NULL);}
	   		| '{' blocco '}' 	 				{$$ = makeTree("DICHIARAZIONE", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), $2, makeTree($3, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL);}
	   		;

comparazione: lval ASSEGNAZIONE rval FINERIGA	{$$ = makeTree("COMPARAZIONE", $1, makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL);}
	   | lval INCREMENTO rval FINERIGA			{$$ = makeTree("COMPARAZIONE", $1, makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL);}
	   | WHILE '(' lval ')' dichiarazione		{$$ = makeTree("COMPARAZIONE", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), $5, NULL);}
	   | IF '(' lval ')' dichiarazione %prec IF	{$$ = makeTree("COMPARAZIONE", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), $5, NULL);}
	   | IF '(' lval ')' dichiarazione Else 	{$$ = makeTree("COMPARAZIONE", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), $5, $6);}
	   ;

Else   : ELSE dichiarazione						{$$ = makeTree("ELSE", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), $2, NULL, NULL, NULL, NULL);}
	   ;
	   
vald   : vals 									{$$ = makeTree("VALD", $1, NULL, NULL, NULL, NULL, NULL);}
	   | NUM									{$$ = makeTree("VALD", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL, NULL, NULL);}
	   ;
	               
vals   : ID 									{$$ = makeTree("VALS", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL, NULL, NULL);}
	   ;
        
%%

int main (void) {
	yyparse();
	return 0;
}

void yyerror (char *s) {
	printf("%s\n", s); 
}