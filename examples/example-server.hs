{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Scotty
import Network.Wai.Middleware.Static

main :: IO ()
main = scotty 8000 $ do
  middleware $ staticPolicy (noDots >-> addBase "static")
  get "/" landingPage
  get "/eg/:example" serveExample

landingPage :: ActionM ()
landingPage = do
  html "Landing page!"

serveExample :: ActionM ()
serveExample = do
  eg <- param "example"
  text eg
