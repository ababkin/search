{-# LANGUAGE OverloadedStrings #-}
import Data.Aeson
import Data.Map
import Control.Applicative
import Control.Monad (mzero)

import Network.HTTP.Conduit -- the main module

-- The streaming interface uses conduits
{- import Data.Conduit -}
{- import Data.Conduit.Binary (sinkFile) -}

import qualified Data.ByteString.Lazy.Char8 as L
import Control.Monad.IO.Class (liftIO)

main :: IO ()
main = do
  response <- simpleHttp "http://localhost:8982/solr/select?q=*:*&wt=json"
  print response
  {- let y = decode x :: Maybe SolrResponse -}
  {- print y -}
