module Example.Eg02 (eg02) where

import Graphics.Radian
import ExampleUtils

eg02 :: IO Html
eg02 = do
  d <- readJSON "vic2012aoo.json" #+
       M.fromList [ ("doy",   [label.="Day of year", units.="d"])
                  , ("month", [label.="Month"])
                  , ("tmp",   [label.="Temperature", units.="&deg;C"])
                  , ("prc",   [label.="Rainfall", units.="mm/day"]) ]
  let plot = Plot [l1, l2] # [strokeWidth.=1.5]
      l1 = Lines (d#^"date"#^"doy") (d#^"tmp") # [stroke.="red"]
      l2 = Lines (d#^"date"#^"doy") (d#^"prc") # [stroke.="blue"]
      source = exampleSource "Eg02.hs"
  return [shamlet|
  <h3>
    Example 2 (basic plot; JSON data access)

  ^{plot}

  ^{source}
|]
