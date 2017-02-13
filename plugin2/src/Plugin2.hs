{-#
  LANGUAGE
      DataKinds
    , TypeOperators
#-}

module Plugin2 (
  API,
  server,
  module Book
  ) where

import Servant

import Book

type API = "book" :> Capture "name" String :> Get '[JSON] [Book]

server::String->Handler [Book]
server name = return [Book{bookName=name}]
