{
module Main where
import ExpressionToken
}

%name parser
%tokentype { Token }
%error { parseError }

%token
    "if"                   {TokenIf}
    "while"                {TokenWhile}
    "else"                 {TokenElse}
    "+="                   {TokenInc}
    '='                    {TokenAseg}
    '('                    {TokenSPAREN}
    ')'                    {TokenDPAREN}
    '{'                    {TokenSGraffa}
    '}'                    {TokenDGraffa}
    "int"                  {TokenASInt}
    "float"                {TokenASFloat}
    ';'                    {TokenPuntoe}
    int                    {TokenInt $$} 
    float                  {TokenFloat $$}
    identificatore         {TokenIdent $$}


%right "+="  
%right '=' 
%right "if" "while"
%right "else"

%%

Esp : int                                               {Intero $1}
     | identificatore                                    {ID $1}
     | float                                             {Float $1}
     | NumCon                                         {Blo $1}
     | Inc                                              {Inc $1}
     | While                                             {While $1}
     | If                                                {If $1}

NumCon : "int" identificatore '=' int ';'                    {AsegInt $2 $4}
        | "float" identificatore '=' float ';'                {AsegFloat $2 $4}

Inc : identificatore "+=" int ';'                                {IncInt $1 $3}
    | identificatore "+=" float ';'                              {IncFloat $1 $3}

While : "while" '(' Esp ')' '{' Esp '}'                        {While $3 $6}    
If : "if" '(' Esp ')' '{' Esp '}'                              {IfA $3 $6}
    | "if" '(' Esp ')' '{' Esp '}' "else"  '{' Esp '}'        {IfElse $3 $6 $10}
{

parseError :: [Token] -> a
parseError _ = error "Parse error"

data Esp
    = Intero Int
    | ID String
    | Float Float
    | Blo NumCon 
    | Inc Inc
    | While While
    | If If
    deriving (Eq, Show)

data NumCon 
    = AsegInt String Int
    | AsegFloat String Float
    deriving (Eq, Show)

data Inc
    = IncInt String Int
    | IncFloat String Float
    deriving (Eq, Show)

data While
    = WhilE Esp Esp
    deriving (Eq, Show)

data If
    = IfA Esp Esp
    | IfElse Esp Esp Esp
    deriving (Eq, Show)

main = getContents >>= print . parser . lexer

}