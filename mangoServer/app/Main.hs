
module Main where

import Network.Wai.Handler.Warp

import Servant

import API

import qualified Plugin1 as P1
import qualified Plugin2 as P2

main::IO ()
main = do
  run 3000 app

app :: Application
app = serve api server

server :: Server API
server = P1.server :<|> P2.server
