{-#
  LANGUAGE
      DataKinds
    , TypeOperators
#-}

module API (
  P1.User(..),
  P2.Book(..),
  API,
  api
  ) where

import Servant

import qualified Plugin1 as P1
import qualified Plugin2 as P2

--You glue all the separate path pieces here, you can add extra path prefixes.
type API = P1.API :<|> "plugin2" :> P2.API

api :: Proxy API
api = Proxy
