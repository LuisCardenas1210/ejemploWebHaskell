{-# LANGUAGE OverloadedStrings #-}

module Lib (runServer) where

import Web.Scotty
import Data.Text.Lazy (Text)

runServer :: IO ()
runServer = scotty 3000 $ do
    get "/" $ do
        text "¡Hola, mundo desde Haskell en VS Code!"

{- 
----CREAR PROYECTO STACK----
stack new myapp
cd myapp
----AGREGAR LIBRERIAS AL PROYECTO----
stack add scotty
stack add text
----DESCARGAR LIBRERIAS EN CASO DE NO TENERLAS
stack build scotty text
----EJECUTAR EL PROYECTO----
stack build
stack exec ejemploWeb-exe
 -}
