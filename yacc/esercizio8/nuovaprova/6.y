
%{ 
	#include <stdio.h> 
	#include <string.h>
	#include <stdlib.h>
	#define Grandezza 5

	void yyerror (char *s);
	int yylex();
	
	struct Albero;
	typedef struct Albero Albero;
	struct Albero 
    {
		char* top;
		Albero* sottoAlbero[Grandezza];
	};

	Albero* makeAlbero (char* top, Albero* a1, Albero* a2, Albero* a3, Albero* a4, Albero* a5) 
    {
		Albero* res = (Albero*) malloc(sizeof(Albero));
		res->top = top;
		res->sottoAlbero[0] = a1;
		res->sottoAlbero[1] = a2;
		res->sottoAlbero[2] = a3;
		res->sottoAlbero[3] = a4;
		res->sottoAlbero[4] = a5;

		return res;
	}

	void stampaAlbero (Albero* a, int num) 
    {
		printf("%*s%s\n", num, "", a->top);
		for (int i = 0; i < Grandezza; i++) 
        {
			if (!a->sottoAlbero[i]) continue;

			stampaAlbero(a->sottoAlbero[i], num + 1);
		}
	}
%} 


%union 		{char* txt; struct Albero* alb;}

%start		Inizio
%token     	Numero
%token		ID
%token     	Let
%token	 	In
%token     	Case
%token	 	Of
%token	 	Fine
%token		Uguale
%token		Freccia

%type 		<txt> Numero ID Let In Case Of Fine Uguale Freccia
%type       <alb> Inizio Funzione Possibilita caso Esp Risultato IDMul LET CASE


%%

Inizio:						                  	{}
	   | Funzione  								{printf("\n"); stampaAlbero($1, 0); printf("\n");} 					 
	   ;
 

Funzione: ID Fine 										{$$ = makeAlbero("Funzione", $1, $2, NULL, NULL, NULL);}
		| ID IDMul Fine									{$$ = makeAlbero("Funzione", $1, $2, $3, NULL, NULL);}
		| ID Possibilita Uguale Risultato Fine			{$$ = makeAlbero("Funzione", $1, makeAlbero($2, NULL, NULL, NULL, NULL, NULL), makeAlbero($4, NULL, NULL, NULL, NULL, NULL), $5, NULL);}
		| ID Possibilita Uguale LET Fine				{$$ = makeAlbero("Funzione", $1, makeAlbero($2, NULL, NULL, NULL, NULL, NULL), makeAlbero($4, NULL, NULL, NULL, NULL, NULL), $5, NULL);}
		| ID Possibilita Uguale CASE Fine				{$$ = makeAlbero("Funzione", $1, makeAlbero($2, NULL, NULL, NULL, NULL, NULL), makeAlbero($4, NULL, NULL, NULL, NULL, NULL), $5, NULL);}
	   ;

IDMul: ID 						{$$ = makeAlbero("ID", $1, NULL, NULL, NULL, NULL);} 
    |Numero 					{$$ = makeAlbero("Numero", $1, NULL, NULL, NULL, NULL);} 
    |ID IDMul 					{$$ = makeAlbero("ID multiplo", $1, NULL, NULL, NULL, NULL);}
	|Numero IDMul 				{$$ = makeAlbero("ID multiplo", $1, NULL, NULL, NULL, NULL);}  
    ;

Risultato: ID 						{$$ = makeAlbero("ID", $1, NULL, NULL, NULL, NULL);} 
    |Numero 						{$$ = makeAlbero("Numero", $1, NULL, NULL, NULL, NULL);}
    ;

Possibilita:	 			{$$ = makeAlbero("Senza ID", NULL, NULL, NULL, NULL, NULL);} 
    |IDMul 					{$$ = makeAlbero("IDentificatore", $1, NULL, NULL, NULL, NULL);} 
    ;

LET: Let Esp In Risultato			{$$ = makeAlbero("Funzione", $1, NULL, NULL, NULL, NULL);} 
	;

CASE: Case ID Of caso				{$$ = makeAlbero("Funzione", $1, NULL, NULL, NULL, NULL);} 
	;

caso: ID Freccia Risultato					{$$ = makeAlbero("Caso", $1, NULL, NULL, NULL, NULL);} 
    | ID Freccia Risultato  caso 			{$$ = makeAlbero("Caso", $1, NULL, NULL, NULL, NULL);} 
    ;

Esp: ID	Uguale ID					{$$ = makeAlbero("Espresione", $1, NULL, NULL, NULL, NULL);} 
	|ID	Uguale Numero				{$$ = makeAlbero("Espresione", $1, NULL, NULL, NULL, NULL);} 
    |ID	Uguale ID Esp 				{$$ = makeAlbero("Espresione", $1, NULL, NULL, NULL, NULL);}
	|ID	Uguale Numero Esp 			{$$ = makeAlbero("Espresione", $1, NULL, NULL, NULL, NULL);}  
    ;

        
%% 

int main (void) {
	yyparse();
	return 0;
}

void yyerror (char *s) {
	printf("%s\n", s); 
}
