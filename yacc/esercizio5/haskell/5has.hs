{-# OPTIONS_GHC -w #-}
module Main where
import ExpressionToken
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,76) ([768,118,4096,0,0,0,0,0,0,0,0,0,8192,0,32,0,64,16384,0,0,8,0,48,16,4096,0,30211,768,118,64,16384,0,4096,0,32,2048,0,8,0,0,0,2048,0,8,128,32768,0,30211,768,118,0,0,0,256,0,1,4,0,0,128,768,118,256,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Esp","NumCon","Inc","While","If","\"if\"","\"while\"","\"else\"","\"+=\"","'='","'('","')'","'{'","'}'","\"int\"","\"float\"","';'","int","float","identificatore","%eof"]
        bit_start = st * 24
        bit_end = (st + 1) * 24
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..23]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (9) = happyShift action_8
action_0 (10) = happyShift action_9
action_0 (18) = happyShift action_10
action_0 (19) = happyShift action_11
action_0 (21) = happyShift action_2
action_0 (22) = happyShift action_12
action_0 (23) = happyShift action_13
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (21) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (24) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_4

action_5 _ = happyReduce_5

action_6 _ = happyReduce_6

action_7 _ = happyReduce_7

action_8 (14) = happyShift action_18
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (14) = happyShift action_17
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (23) = happyShift action_16
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (23) = happyShift action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_3

action_13 (12) = happyShift action_14
action_13 _ = happyReduce_2

action_14 (21) = happyShift action_23
action_14 (22) = happyShift action_24
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (13) = happyShift action_22
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (13) = happyShift action_21
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (9) = happyShift action_8
action_17 (10) = happyShift action_9
action_17 (18) = happyShift action_10
action_17 (19) = happyShift action_11
action_17 (21) = happyShift action_2
action_17 (22) = happyShift action_12
action_17 (23) = happyShift action_13
action_17 (4) = happyGoto action_20
action_17 (5) = happyGoto action_4
action_17 (6) = happyGoto action_5
action_17 (7) = happyGoto action_6
action_17 (8) = happyGoto action_7
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (9) = happyShift action_8
action_18 (10) = happyShift action_9
action_18 (18) = happyShift action_10
action_18 (19) = happyShift action_11
action_18 (21) = happyShift action_2
action_18 (22) = happyShift action_12
action_18 (23) = happyShift action_13
action_18 (4) = happyGoto action_19
action_18 (5) = happyGoto action_4
action_18 (6) = happyGoto action_5
action_18 (7) = happyGoto action_6
action_18 (8) = happyGoto action_7
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (15) = happyShift action_30
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (15) = happyShift action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (21) = happyShift action_28
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (22) = happyShift action_27
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (20) = happyShift action_26
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (20) = happyShift action_25
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_11

action_26 _ = happyReduce_10

action_27 (20) = happyShift action_34
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (20) = happyShift action_33
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (16) = happyShift action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (16) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (9) = happyShift action_8
action_31 (10) = happyShift action_9
action_31 (18) = happyShift action_10
action_31 (19) = happyShift action_11
action_31 (21) = happyShift action_2
action_31 (22) = happyShift action_12
action_31 (23) = happyShift action_13
action_31 (4) = happyGoto action_36
action_31 (5) = happyGoto action_4
action_31 (6) = happyGoto action_5
action_31 (7) = happyGoto action_6
action_31 (8) = happyGoto action_7
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (9) = happyShift action_8
action_32 (10) = happyShift action_9
action_32 (18) = happyShift action_10
action_32 (19) = happyShift action_11
action_32 (21) = happyShift action_2
action_32 (22) = happyShift action_12
action_32 (23) = happyShift action_13
action_32 (4) = happyGoto action_35
action_32 (5) = happyGoto action_4
action_32 (6) = happyGoto action_5
action_32 (7) = happyGoto action_6
action_32 (8) = happyGoto action_7
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_8

action_34 _ = happyReduce_9

action_35 (17) = happyShift action_38
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (17) = happyShift action_37
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (11) = happyShift action_39
action_37 _ = happyReduce_13

action_38 _ = happyReduce_12

action_39 (16) = happyShift action_40
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (9) = happyShift action_8
action_40 (10) = happyShift action_9
action_40 (18) = happyShift action_10
action_40 (19) = happyShift action_11
action_40 (21) = happyShift action_2
action_40 (22) = happyShift action_12
action_40 (23) = happyShift action_13
action_40 (4) = happyGoto action_41
action_40 (5) = happyGoto action_4
action_40 (6) = happyGoto action_5
action_40 (7) = happyGoto action_6
action_40 (8) = happyGoto action_7
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (17) = happyShift action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_14

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn4
		 (Intero happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn4
		 (ID happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenFloat happy_var_1))
	 =  HappyAbsSyn4
		 (Float happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Blo happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (Inc happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn4
		 (While happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn4
		 (If happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happyReduce 5 5 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyTerminal (TokenInt happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (AsegInt happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 5 5 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyTerminal (TokenFloat happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (AsegFloat happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 4 6 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyTerminal (TokenInt happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IncInt happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 4 6 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyTerminal (TokenFloat happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IncFloat happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 7 7 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (While happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 7 8 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (IfA happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 11 8 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Ifelse happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 24 24 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenIf -> cont 9;
	TokenWhile -> cont 10;
	TokenElse -> cont 11;
	TokenInc -> cont 12;
	TokenAseg -> cont 13;
	TokenSPAREN -> cont 14;
	TokenDPAREN -> cont 15;
	TokenSGraffa -> cont 16;
	TokenDGraffa -> cont 17;
	TokenASInt -> cont 18;
	TokenASFloat -> cont 19;
	TokenPuntoe -> cont 20;
	TokenInt happy_dollar_dollar -> cont 21;
	TokenFloat happy_dollar_dollar -> cont 22;
	TokenIdent happy_dollar_dollar -> cont 23;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 24 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
