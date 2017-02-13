{-#
  LANGUAGE
      DataKinds
    , TypeOperators
#-}

module Plugin1 (
  API,
  server,
  module User
  ) where

import Servant

import User

type API = "user" :> Get '[JSON] User

server::Handler User
server = return User{name="qqqq"}
