
import Network.HTTP.Client
import Control.Monad.Trans.Except
import Servant.Client

import qualified MangoClientLib as Mango

main::IO ()
main = do
  manager <- newManager defaultManagerSettings
  baseUrl <- parseBaseUrl "http://localhost:3000/"
  
  user <- runExceptT $ Mango.getUser manager baseUrl
  case user of
   Left e -> putStrLn $ "error: " ++ show e
   Right user' -> putStrLn $ "user '" ++ Mango.name user' ++ "' is " ++ show user'
