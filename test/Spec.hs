import           Lib        (addOne)
import           Monad      (MyMaybe (..), MyMonad (..))
import           Test.Hspec



main :: IO ()
main =
  hspec $
    describe "PKGNAME-test" $ do
      it "works" $ do
        2 + 2 `shouldBe` (4 :: Int)
        Lib.addOne 3 `shouldBe` 4

      it "should monad" $ do
        maybeExample `shouldBe` MyValue 52
          where
            maybeExample :: MyMaybe Int
            maybeExample = mybind (MyValue 42) (\v -> MyValue (v + 10))

