module Monad 
  (
    MyMaybe(..),
    MyMonad(..),
  )
where

-- Define the Monad type class
class MyMonad m where
  -- Return a value in the monadic context
  return :: a -> m a

  -- Bind operation to sequence computations
  (>>=) :: m a -> (a -> m b) -> m b

data MyMaybe x = Some x | Nah
  deriving (Eq, Show)

-- Example Monad instance: Maybe
instance MyMonad MyMaybe where
  return x = Some x
  Nah >>= _      = Nah
  (Some x) >>= f = f x
