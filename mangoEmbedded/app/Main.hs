
import Control.Monad.Trans.Except

import qualified Plugin1 as P1

main::IO ()
main = do
  user <- runExceptT $ P1.server
  case user of
   Left e -> putStrLn $ "error: " ++ show e
   Right user' -> putStrLn $ "user '" ++ P1.name user' ++ "' is " ++ show user'
