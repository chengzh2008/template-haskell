module Monad
  (
    MyMaybe(..),
    MyMonad(..),
  )
where

-- Define the Monad type class
class MyMonad m where
  -- Return a value in the monadic context
  myreturn :: a -> m a

  -- Bind operation to sequence computations
  mybind :: m a -> (a -> m b) -> m b

data MyMaybe x = MyValue x | Nah
  deriving (Eq, Show)

-- Example Monad instance: Maybe
instance MyMonad MyMaybe where
  myreturn x = MyValue x
  mybind Nah _         = Nah
  mybind (MyValue x) f = f x
