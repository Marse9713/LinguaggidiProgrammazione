
%{ 
	#include <stdio.h> 
	#include <string.h>
	#include <stdlib.h>
	#define ARITY 6

	void yyerror (char *s);
	int yylex();
	
	/* definizione dell'albero di parsing */
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

	/* procedura che stampa l'albero, incrementando l'indentazione per distinguere i vari livelli */
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
%token	 	FINECOM

%type 		<txt> NUMERO IF ELSE WHILE IDENT ASSEGN INCREM '(' ')' '{' '}'  FINECOM
%type       <tp> input blocks statement com elsE rval lval

/* per gestire l'ambiguità dell'if-else, anche se yacc gestisce già in maniera corretta di default */
%nonassoc IF
%nonassoc ELSE

%%

input  : /* epsilon */							{}
	   | blocks  								{printf("\n"); printTree($1, 0); printf("\n");} 					 
	   ;
	   
blocks : statement                      		{$$ = makeTree("BLOCK", $1, NULL, NULL, NULL, NULL, NULL);}  
	   | statement blocks              			{$$ = makeTree("BLOCK", $1, $2, NULL, NULL, NULL, NULL);}
	   ;  
	   
statement   : com 								{$$ = makeTree("STAT", $1, NULL, NULL, NULL, NULL, NULL);}
	   		| '{' blocks '}' 	 				{$$ = makeTree("STAT", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), $2, makeTree($3, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL, NULL);}
	   		;

com    : lval ASSEGN rval FINECOM				{$$ = makeTree("COM", $1, makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL);}
	   | lval INCREM rval FINECOM					{$$ = makeTree("COM", $1, makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), NULL, NULL);}
	   | WHILE '(' lval ')' statement			{$$ = makeTree("COM", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), $5, NULL);}
	   | IF '(' lval ')' statement %prec IF		{$$ = makeTree("COM", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), $5, NULL);}
	   | IF '(' lval ')' statement elsE			{$$ = makeTree("COM", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), makeTree($2, NULL, NULL, NULL, NULL, NULL, NULL), $3, makeTree($4, NULL, NULL, NULL, NULL, NULL, NULL), $5, $6);}
	   ;

elsE   : ELSE statement							{$$ = makeTree("ELSE", makeTree($1, NULL, NULL, NULL, NULL, NULL, NULL), $2, NULL, NULL, NULL, NULL);}
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
