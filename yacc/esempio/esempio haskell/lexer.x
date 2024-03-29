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
    "if"             {\s -> TokenIf}
    "while"          {\s -> TokenWhile }
    "else"           {\s -> TokenElse }
    "+="             {\s -> TokenInc }
    \=               {\s -> TokenAsg }
    \(               {\s -> TokenLPAREN}
    \)               {\s -> TokenRPAREN}
    \{               {\s -> TokenFwGRBracket}
    \}               {\s -> TokenBwGRBracket}
    "int"            {\s -> TokenKWInt}
    "float"          {\s -> TokenKWFloat}   
    \;               {\s -> TokenSemiCol}
    @int             {\s -> TokenInt (read s)}
    @float           {\s -> TokenFloat (read s)}
    @identificatore  {\s -> TokenIdentifier s}
    $white+          ;


{
data Token = TokenIf   
            | TokenWhile
            | TokenElse
            | TokenInc
            | TokenAsg
            | TokenLPAREN
            | TokenRPAREN
            | TokenFwGRBracket
            | TokenBwGRBracket
            | TokenKWInt
            | TokenKWFloat
            | TokenInt Int
            | TokenFloat Float
            | TokenIdentifier String
            | TokenSemiCol
        deriving (Eq, Show)

lexer = alexScanTokens
}