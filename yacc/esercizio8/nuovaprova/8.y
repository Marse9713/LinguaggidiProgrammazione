
%{ 
	#include <stdio.h> 
	#include <string.h>
	#include <stdlib.h>
	#define ARITY 7

	void yyerror (char *s);
	int yylex();
	
	struct Tree;
	typedef struct Tree Tree;
	struct Tree {
		char* top;
		Tree* subTrees[ARITY];
	};

	Tree* makeTree (char* top, Tree* t1, Tree* t2, Tree* t3, Tree* t4, Tree* t5, Tree* t6, Tree* t7) {
		Tree* res = (Tree*) malloc(sizeof(Tree));
		res->top = top;
		res->subTrees[0] = t1;
		res->subTrees[1] = t2;
		res->subTrees[2] = t3;
		res->subTrees[3] = t4;
		res->subTrees[4] = t5;
		res->subTrees[5] = t6;
		res->subTrees[6] = t7;

		return res;
	}

	void printTree (Tree* t, int sp) {
		printf("%*s%s\n", sp, "", t->top);
		for (int i = 0; i < ARITY - 1; i++) {
			if (!t->subTrees[i]) continue;
			printTree(t->subTrees[i], sp + 3);
		}
	}
%} 

%union 		{char* txt; struct Tree* tp;}

%start		input
%token     	NUMERO
%token     	IDENTIFICATORE
%token      LET
%token     	CASE
%token		ELSE
%token 		MOLTIPLICAZIONE
%token	 	SOMMA
%token	 	DIFFERENZA
%token	 	EQUIVALENZA
%token     	'('
%token	 	')'
%token      '['
%token      ']'

%type 		<txt> NUMERO IDENTIFICATORE SOMMA DIFFERENZA EQUIVALENZA MOLTIPLICAZIONE LET CASE ELSE '(' ')' '[' ']'
%type       <tp> input valore espressione blocco somma differenza moltiplicazione equivalenza valore_multiplo blocco_multiplo case casi

%%

input :                                     				{} 
    | blocco                            					{printf("\n"); printTree($1, 0); return 0;}
    ;

blocco :  espressione										{$$ = makeTree("BLOCCO", $1, NULL, NULL, NULL, NULL, NULL, NULL);}
	| '(' espressione ')'									{$$ = makeTree("BLOCCO", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL, NULL), $2, makeTree($3, NULL, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL, NULL);}
	;

espressione : somma			 								{$$ = makeTree("ESPRESSIONE", $1, NULL, NULL, NULL, NULL, NULL, NULL);}
	| differenza			 								{$$ = makeTree("ESPRESSIONE", $1, NULL, NULL, NULL, NULL, NULL, NULL);}
	| moltiplicazione										{$$ = makeTree("ESPRESSIONE", $1, NULL, NULL, NULL, NULL, NULL, NULL);}
	| equivalenza			 								{$$ = makeTree("ESPRESSIONE", $1, NULL, NULL, NULL, NULL, NULL, NULL);}
	| case													{$$ = makeTree("ESPRESSIONE", $1, NULL, NULL, NULL, NULL, NULL, NULL);}
	;

somma : SOMMA valore_multiplo								{$$ = makeTree("SOMMA", $2, NULL, NULL, NULL, NULL, NULL, NULL);}
	| SOMMA valore blocco									{$$ = makeTree("SOMMA", $2, $3, NULL, NULL, NULL, NULL, NULL);}
	| SOMMA blocco valore									{$$ = makeTree("SOMMA", $2, $3, NULL, NULL, NULL, NULL, NULL);}
	| SOMMA blocco_multiplo									{$$ = makeTree("SOMMA", $2, NULL, NULL, NULL, NULL, NULL, NULL);}
	;

differenza : DIFFERENZA valore_multiplo						{$$ = makeTree("DIFFERENZA", $2, NULL, NULL, NULL, NULL, NULL, NULL);}
	| DIFFERENZA valore blocco								{$$ = makeTree("DIFFERENZA", $2, $3, NULL, NULL, NULL, NULL, NULL);}
	| DIFFERENZA blocco valore								{$$ = makeTree("DIFFERENZA", $2, $3, NULL, NULL, NULL, NULL, NULL);}
	| DIFFERENZA blocco_multiplo							{$$ = makeTree("DIFFERENZA", $2, NULL, NULL, NULL, NULL, NULL, NULL);}
	;

moltiplicazione : MOLTIPLICAZIONE valore_multiplo			{$$ = makeTree("MOLTIPLICAZIONE", $2, NULL, NULL, NULL, NULL, NULL, NULL);}
	| MOLTIPLICAZIONE valore blocco							{$$ = makeTree("MOLTIPLICAZIONE", $2, $3, NULL, NULL, NULL, NULL, NULL);}
	| MOLTIPLICAZIONE blocco valore							{$$ = makeTree("MOLTIPLICAZIONE", $2, $3, NULL, NULL, NULL, NULL, NULL);}
	| MOLTIPLICAZIONE blocco_multiplo						{$$ = makeTree("MOLTIPLICAZIONE", $2, NULL, NULL, NULL, NULL, NULL, NULL);}
	;

equivalenza : EQUIVALENZA valore_multiplo					{$$ = makeTree("EQUIVALENZA", $2, NULL, NULL, NULL, NULL, NULL, NULL);}
	| EQUIVALENZA valore blocco								{$$ = makeTree("EQUIVALENZA", $2, $3, NULL, NULL, NULL, NULL, NULL);}
	| EQUIVALENZA blocco valore								{$$ = makeTree("EQUIVALENZA", $2, $3, NULL, NULL, NULL, NULL, NULL);}
	| EQUIVALENZA blocco_multiplo							{$$ = makeTree("EQUIVALENZA", $2, NULL, NULL, NULL, NULL, NULL, NULL);}
	;

valore_multiplo : valore									{$$ = makeTree("NUMERO", $1, NULL, NULL, NULL, NULL, NULL, NULL);}
	| valore valore_multiplo								{$$ = makeTree("NUMERO", $1, $2, NULL, NULL, NULL, NULL, NULL);}
	;

blocco_multiplo : blocco									{$$ = makeTree("BLOCCO", $1, NULL, NULL, NULL, NULL, NULL, NULL);}
	| blocco blocco_multiplo								{$$ = makeTree("BLOCCO", $1, $2, NULL, NULL, NULL, NULL, NULL);}

valore : NUMERO 											{$$ = makeTree("NUMERO", NULL, NULL, NULL, NULL, NULL, NULL, NULL);}
	| IDENTIFICATORE 										{$$ = makeTree("IDENTIFICATORE", NULL, NULL, NULL, NULL, NULL, NULL, NULL);}
	;

case : '(' CASE espressione casi ')'						{$$ = makeTree("CASE", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL, NULL), $3, $4, makeTree($5, NULL, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL);}			
	;

casi : '[' '(' valore_multiplo ')' valore ']'				{$$ = makeTree("CASO", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL, NULL), makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL, NULL), $5, makeTree($6, NULL, NULL, NULL, NULL, NULL, NULL, NULL), NULL);}
	| '[' '(' valore_multiplo ')' valore ']' casi			{$$ = makeTree("CASO", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL, NULL), makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL, NULL), $5, makeTree($6, NULL, NULL, NULL, NULL, NULL, NULL, NULL), $7);}
	| '[' ELSE valore ']'									{$$ = makeTree("CASO ELSE", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL, NULL);}
	;

%%   

int main (void) {
	yyparse();
	return 0;
}

void yyerror (char *s) {
	printf("%s\n", s); 
}