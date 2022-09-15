{
module ExpressionToken (Token(..), lexer) where
}

%wrapper "basic"

$digit               = 0-9
$underscore          = \_
$dollar              = \$
$alpha               = [a-zA-Z]

@sign                = \- | \+
@int                 = @sign?$digit+ 
@float               = @sign?$digit+\.$digit+
@identificatore      = ($alpha+|$underscore+|$dollar+)+   

tokens :-
    "if"             {\s -> TokenIf }
    "while"          {\s -> TokenWhile }
    "else"           {\s -> TokenElse }
    "+="             {\s -> TokenInc }
    \=               {\s -> TokenAseg }
    \(               {\s -> TokenSPAREN }
    \)               {\s -> TokenDPAREN }
    \{               {\s -> TokenSGraffa }
    \}               {\s -> TokenDGraffa }
    "int"            {\s -> TokenASInt }
    "float"          {\s -> TokenASFloat }   
    \;               {\s -> TokenPuntoe }
    @int             {\s -> TokenInt (read s)}
    @float           {\s -> TokenFloat (read s)}
    @identificatore  {\s -> TokenIdent s}
    $white+          ;


{
data Token = TokenIf   
            | TokenWhile
            | TokenElse
            | TokenInc
            | TokenAseg
            | TokenSPAREN
            | TokenDPAREN
            | TokenSGraffa
            | TokenDGraffa
            | TokenASInt
            | TokenASFloat
            | TokenInt Int
            | TokenFloat Float
            | TokenIdent String
            | TokenPuntoe
        deriving (Eq, Show)

lexer = alexScanTokens
}