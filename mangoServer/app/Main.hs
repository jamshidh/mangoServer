{-#
  LANGUAGE
      DataKinds
    , DeriveGeneric
    , TypeOperators
#-}

module Main where

import Network.Wai.Handler.Warp

import Servant


import qualified Plugin1 as P1
import qualified Plugin2 as P2

main::IO ()
main = do
  run 3000 app

app :: Application
app = serve api server

--You glue all the separate path pieces here, you can add extra path prefixes.
type API = P1.API :<|> "plugin2" :> P2.API

api :: Proxy API
api = Proxy

server :: Server API
server = P1.server :<|> P2.server
