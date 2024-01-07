module Lib
  ( someFunc,
    addOne,
  )
where

someFunc :: IO ()
someFunc = putStrLn "hey"

addOne :: Int -> Int
addOne a = a + 1

