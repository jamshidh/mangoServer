{-#
  LANGUAGE
      DeriveGeneric
#-}

module User where

import Data.Aeson
import GHC.Generics

data User = User{name::String} deriving (Generic)

instance ToJSON User where
