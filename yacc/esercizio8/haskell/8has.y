{
module Main where
import ExpressionToken
}

%name parser
%tokentype { Token }
%error { parseError }

%token
    let                    {TokenLet}
    cond                   {TokenCond}
    else                   {TokenElse}
    '='                    {TokenEqu}
    '('                    {TokenSPAREN}
    ')'                    {TokenDPAREN}
    '['                    {TokenSQuadra}
    ']'                    {TokenDQuadra}
    '+'                    {TokenSom}
    '-'                    {TokenSott}
    '*'                    {TokenMol}
    int                    {TokenInt $$} 
    identificatore         {TokenIdent $$}


%right '+' '-'
%right '*'  
%right '=' 
%right let cond
%right else

%%

Esp : int                                               {Intero $1}
    | identificatore                                    {ID $1}
    | '(' Parentesi ')'                                 {Blo $2}

Parentesi : '+' Esp Esp                                 {Som $2 $3}
          | '-' Esp Esp                                 {Sott $2 $3}
          | '*' Esp Esp                                 {Mol $2 $3}
          | '=' Esp Esp                                 {Equ $2 $3}
          | let '(' '[' identificatore Esp ']' Esp ')'  {Let $4 $5 $7}
{

parseError :: [Token] -> a
parseError _ = error "Parse error"

data Esp
    = Intero Int        
    | ID String         --dico che è una stringa
    | Blo Parentesi     --gestisci il caso delle parentesi
    deriving (Eq, Show)

data Parentesi 
    = Som Esp Esp
    | Sott Esp Esp
    | Mol Esp Esp
    | Equ Esp Esp
    | Let String Esp Esp
--    | Cond CondCase
    deriving (Eq, Show)

-- data CondCase
--     = cmpCase Esp Esp Esp
--     | cmpCaseRep Esp Esp Esp CondCase
--     | cmpCaseElse Esp
--     deriving (Eq, Show)


main = getContents >>= print . parser . lexer

}