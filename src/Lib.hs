{-# LANGUAGE OverloadedStrings #-}

module Lib (runServer) where

import Web.Scotty
import Data.Text.Lazy (Text)

runServer :: IO ()
runServer = scotty 3000 $ do
    get "/" $ do
        text "¡Hola, mundo desde Haskell en VS Code!"

-- stack build
-- stack exec ejemploWeb-exe
