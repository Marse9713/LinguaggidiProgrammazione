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
    \=               {\s -> TokenCmp }
    \(               {\s -> TokenLPAREN}
    \)               {\s -> TokenRPAREN}
    \[               {\s -> TokenFwSQBracket}
    \]               {\s -> TokenBwSQBracket}
    \+               {\s -> TokenAdd}
    \-               {\s -> TokenSub}
    \*               {\s -> TokenMul}
    @int             {\s -> TokenInt (read s)}
    @identificatore  {\s -> TokenIdentifier s}
    $white+          ;


{
data Token = TokenLet   
            | TokenCond
            | TokenElse
            | TokenCmp
            | TokenLPAREN
            | TokenRPAREN
            | TokenFwSQBracket
            | TokenBwSQBracket
            | TokenAdd
            | TokenSub
            | TokenMul
            | TokenInt Int
            | TokenIdentifier String
        deriving (Eq, Show)

lexer = alexScanTokens
}