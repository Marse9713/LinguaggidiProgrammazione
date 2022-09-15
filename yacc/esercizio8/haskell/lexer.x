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
@identificatore      = ($alpha+|$underscore+|$dollar+)+   

tokens :-
    let              {\s -> TokenLet}
    cond             {\s -> TokenCond }
    else             {\s -> TokenElse }
    \=               {\s -> TokenEqu }
    \(               {\s -> TokenSPAREN}
    \)               {\s -> TokenDPAREN}
    \[               {\s -> TokenSQuadra}
    \]               {\s -> TokenDQuadra}
    \+               {\s -> TokenSom}
    \-               {\s -> TokenSott}
    \*               {\s -> TokenMol}
    @int             {\s -> TokenInt (read s)}
    @identificatore  {\s -> TokenIdent s}
    $white+          ;


{
data Token = TokenLet   
            | TokenCond
            | TokenElse
            | TokenEqu
            | TokenSPAREN
            | TokenDPAREN
            | TokenSQuadra
            | TokenDQuadra
            | TokenSom
            | TokenSott
            | TokenMol
            | TokenInt Int
            | TokenIdent String
        deriving (Eq, Show)

lexer = alexScanTokens
}