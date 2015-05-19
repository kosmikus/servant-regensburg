-- A minimal web application using WAI that responds 200 "Hello" to
-- all requests.

{-# LANGUAGE OverloadedStrings #-}
module Main where

import Network.HTTP.Types
import Network.Wai
import Network.Wai.Handler.Warp

helloWorld :: Application
helloWorld _ ret = ret (responseLBS status200 [] "Hello")

main :: IO ()
main = run 8080 helloWorld
