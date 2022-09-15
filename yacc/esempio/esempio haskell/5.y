{
module Main where
import ExpressionToken
}

%name parser_perna
%tokentype { Token }
%error { parseError }

%token
    "if"                     {TokenIf}
    "while"                {TokenWhile}
    "else"                   {TokenElse}
    "+="                   {TokenInc}
    '='                    {TokenAsg}
    '('                    {TokenLPAREN}
    ')'                    {TokenRPAREN}
    '{'                    {TokenFwGRBracket}
    '}'                    {TokenBwGRBracket}
    "int"                  {TokenKWInt}
    "float"                {TokenKWFloat}
    ';'                    {TokenSemiCol}
    int                    {TokenInt $$} 
    float                  {TokenFloat $$}
    identificatore         {TokenIdentifier $$}


%right "+="  
%right '=' 
%right "if" "while"
%right "else"

%%

Expr : int                                               {Intero $1}
     | identificatore                                    {ID $1}
     | float                                             {Float $1}
     | NumCons                                         {Blk $1}
     | Inc                                              {Inc $1}
     | While                                             {While $1}
     | If                                                {If $1}

NumCons : "int" identificatore '=' int ';'                    {AsgInt $2 $4}
        | "float" identificatore '=' float ';'                {AsgFloat $2 $4}

Inc : identificatore "+=" int ';'                                {IncInt $1 $3}
    | identificatore "+=" float ';'                              {IncFloat $1 $3}

While : "while" '(' Expr ')' '{' Expr '}'                        {WhilE $3 $6}    
If : "if" '(' Expr ')' '{' Expr '}'                              {IfEz $3 $6}
    | "if" '(' Expr ')' '{' Expr '}' "else"  '{' Expr '}'        {IfElse $3 $6 $10}
{

parseError :: [Token] -> a
parseError _ = error "Parse error"

data Expr
    = Intero Int
    | ID String
    | Float Float
    | Blk NumCons 
    | Inc Inc
    | While While
    | If If
    deriving (Eq, Show)

data NumCons 
    = AsgInt String Int
    | AsgFloat String Float
    deriving (Eq, Show)

data Inc
    = IncInt String Int
    | IncFloat String Float
    deriving (Eq, Show)

data While
    = WhilE Expr Expr
    deriving (Eq, Show)

data If
    = IfEz Expr Expr
    | IfElse Expr Expr Expr
    deriving (Eq, Show)

main = getContents >>= print . parser_perna . lexer

}