{-#
  LANGUAGE
      DeriveGeneric
#-}

module Book where

import Data.Aeson
import GHC.Generics


data Book = Book{bookName::String} deriving (Generic)

instance ToJSON Book where
instance FromJSON Book where
  

