
module MangoClientLib (
  User(..),
  Book(..),
  getUser,
  getBook
  ) where

import Network.HTTP.Client hiding (Proxy)
import Servant
import Servant.Client

import API



plugin1Proxy::Proxy API
plugin1Proxy = Proxy

getUser::Manager->BaseUrl->ClientM User
getBook::String->Manager->BaseUrl->ClientM [Book]
getUser :<|> getBook = client plugin1Proxy
