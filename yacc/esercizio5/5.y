
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
		for (int i = 0; i < ARITY; i++) {
			if (!t->subTrees[i]) continue;
			printTree(t->subTrees[i], sp + 3);
		}
	}
%} 

%union 		{char* txt; struct Tree* tp;}

%start		input
%token     	IDENT 
%token     	NUMERO
%token 		ASSEGN
%token	 	INCREM
%token     	IF ELSE
%token	 	WHILE
%token     	'(' ')'
%token	 	'{' '}'
%token	 	SEPARATORE

%type 		<txt> NUMERO IF ELSE WHILE IDENT ASSEGN INCREM '(' ')' '{' '}'  SEPARATORE
%type       <tp> input blocco dichiarazione com elsE rval lval

%nonassoc IF
%nonassoc ELSE

%%

input  : /* epsilon */							{}
	   | blocco  								{printf("\n"); printTree($1, 0); printf("\n");} 					 
	   ;
	   
blocco : dichiarazione                     		{$$ = makeTree("BLOCCO", $1, NULL, NULL, NULL, NULL, NULL);}  
	   | dichiarazione blocco          			{$$ = makeTree("BLOCCO", $1, $2, NULL, NULL, NULL, NULL);}
	   ;  
	   
dichiarazione : com 							{$$ = makeTree("DICHIARAZIONE", $1, NULL, NULL, NULL, NULL, NULL);}
	   		  | '{' blocco '}' 	 				{$$ = makeTree("DICHIARAZIONE", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), $2, makeTree($3, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL);}
	   		  ;

com : lval ASSEGN rval SEPARATORE			{$$ = makeTree("COMANDO", $1, makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL);}
	| lval INCREM rval SEPARATORE			{$$ = makeTree("COMANDO", $1, makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL);}
	| WHILE '(' lval ')' dichiarazione		{$$ = makeTree("COMANDO", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), $5, NULL);}
	| IF '(' lval ')' dichiarazione %prec IF	{$$ = makeTree("COMANDO", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), $5, NULL);}
	| IF '(' lval ')' dichiarazione elsE		{$$ = makeTree("COMANDO", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), $5, $6);}
	;

elsE   : ELSE dichiarazione						{$$ = makeTree("ELSE", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), $2, NULL, NULL, NULL, NULL);}
	   ;
	   
rval   : lval 									{$$ = makeTree("RVAL", $1, NULL, NULL, NULL, NULL, NULL);}
	   | NUMERO									{$$ = makeTree("RVAL", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL, NULL, NULL);}
	   ;
	               
lval   : IDENT 									{$$ = makeTree("LVAL", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL, NULL, NULL);}
	   ;
        
%% 

int main (void) {
	yyparse();
	return 0;
}

void yyerror (char *s) {
	printf("%s\n", s); 
}
