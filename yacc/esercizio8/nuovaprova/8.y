
%{ 
	#include <stdio.h> 
	#include <string.h>
	#include <stdlib.h>
	#define ARITY 6

	void yyerror (char *s);
	int yylex();
	
	struct Tree;
	typedef struct Tree Tree;
	struct Tree {
		char* top;
		Tree* subTrees[ARITY];
	};

	Tree* makeTree (char* top, Tree* t1, Tree* t2, Tree* t3, Tree* t4, Tree* t5, Tree* t6) {
		Tree* res = (Tree*) malloc(sizeof(Tree));
		res->top = top;
		res->subTrees[0] = t1;
		res->subTrees[1] = t2;
		res->subTrees[2] = t3;
		res->subTrees[3] = t4;
		res->subTrees[4] = t5;
		res->subTrees[5] = t6;

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
%token      ELSE
%token 		MOLTIPLICAZIONE
%token	 	SOMMA
%token	 	DIFFERENZA
%token	 	EQUIVALENZA
%token     	'('
%token	 	')'
%token      '['
%token      ']'

%type 		<txt> NUMERO IDENTIFICATORE SOMMA DIFFERENZA EQUIVALENZA MOLTIPLICAZIONE LET CASE ELSE '(' ')' '[' ']'
%type       <tp> input operazione valore espressione blocco

%%

input :                                     {} 
    | blocco                             {printf("\n"); printTree($1, 0); printf("\n");}
    ;

blocco : 						{$$ = makeTree("BLOCCO", $1, $2, NULL, NULL, NULL, NULL);}
	| espressione				{$$ = makeTree("BLOCCO", $1, NULL, NULL, NULL, NULL, NULL);}
	| '(' espressione ')'		{$$ = makeTree("BLOCCO", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), $2, makeTree($3, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL);}
	| '[' blocco ']'			{$$ = makeTree("CASO", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), $2, makeTree($3, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL);}
	;

espressione : operazione			 {$$ = makeTree("ESPRESSIONE", $1, NULL, NULL, NULL, NULL, NULL);}
	;

operazione : SOMMA valore valore							{$$ = makeTree("SOMMA", $2, $3, NULL, NULL, NULL, NULL);}
	| SOMMA valore blocco									{$$ = makeTree("SOMMA", $2, $3, NULL, NULL, NULL, NULL);}
	| SOMMA blocco valore									{$$ = makeTree("SOMMA", $2, $3, NULL, NULL, NULL, NULL);}
	| SOMMA blocco blocco									{$$ = makeTree("SOMMA", $2, $3, NULL, NULL, NULL, NULL);}
	| DIFFERENZA valore valore								{$$ = makeTree("DIFFERENZA", $2, $3, NULL, NULL, NULL, NULL);}
	| DIFFERENZA valore blocco								{$$ = makeTree("DIFFERENZA", $2, $3, NULL, NULL, NULL, NULL);}
	| DIFFERENZA blocco valore								{$$ = makeTree("DIFFERENZA", $2, $3, NULL, NULL, NULL, NULL);}
	| DIFFERENZA blocco blocco								{$$ = makeTree("DIFFERENZA", $2, $3, NULL, NULL, NULL, NULL);}
	| MOLTIPLICAZIONE valore valore							{$$ = makeTree("MOLTIPLICAZIONE", $2, $3, NULL, NULL, NULL, NULL);}
	| MOLTIPLICAZIONE valore blocco							{$$ = makeTree("MOLTIPLICAZIONE", $2, $3, NULL, NULL, NULL, NULL);}
	| MOLTIPLICAZIONE blocco valore							{$$ = makeTree("MOLTIPLICAZIONE", $2, $3, NULL, NULL, NULL, NULL);}
	| MOLTIPLICAZIONE blocco blocco							{$$ = makeTree("MOLTIPLICAZIONE", $2, $3, NULL, NULL, NULL, NULL);}
	| EQUIVALENZA valore valore								{$$ = makeTree("EQUIVALENZA", $2, $3, NULL, NULL, NULL, NULL);}
	| EQUIVALENZA valore blocco								{$$ = makeTree("EQUIVALENZA", $2, $3, NULL, NULL, NULL, NULL);}
	| EQUIVALENZA blocco valore								{$$ = makeTree("EQUIVALENZA", $2, $3, NULL, NULL, NULL, NULL);}
	| EQUIVALENZA blocco blocco								{$$ = makeTree("EQUIVALENZA", $2, $3, NULL, NULL, NULL, NULL);}
	| CASE blocco											{$$ = makeTree("CASE", $2, NULL, NULL, NULL, NULL, NULL);}
	;

valore : NUMERO {$$ = makeTree("NUMERO", NULL, NULL, NULL, NULL, NULL, NULL);}
	| IDENTIFICATORE {$$ = makeTree("IDENTIFICATORE", NULL, NULL, NULL, NULL, NULL, NULL);}
	;

%%   

int main (void) {
	yyparse();
	return 0;
}

void yyerror (char *s) {
	printf("%s\n", s); 
}