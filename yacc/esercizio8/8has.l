%{
#include <stdio.h>
#include "y.tab.h"
#include <math.h>
#include <string.h>
%}
%%
\n					{ return *yytext;	}
"+"					{ return *yytext;	}
"-" 				{ return *yytext;	}
"*" 				{ return *yytext;	}
"/" 				{ return *yytext;	}
"="					{ return *yytext;	}
"q"					{ return *yytext;	}
"let"				{ yylval.stringConst = strdup(yytext); return tokenLet;}
"case"				{ yylval.stringConst = strdup(yytext); return tCase;}
"["					{ return tokenSQuadra;}
"]"					{ return tokenDQuadra;}
\(					{ return tokenSPAREN;	}
\)					{ return tokenDPAREN;	}
"define"			{ return tokenDEFINE;	}
"lambda"			{ return tokenLambda;	}
[a-zA-Z]+			{ yylval.stringConst = strdup(yytext); return tokenIDENTIFIER;} 
[\t]				
[0-9]+				{ yylval.intConst = atoi(yytext); return tokenINTCONST;}
%%