module Example.Eg01 (eg01) where

import Graphics.Radian
import ExampleUtils

eg01 :: IO Html
eg01 = do
  d <- readCSV "vic2012ooa.csv" ["day", "tmp", "prc"] #+
       M.fromList [ ("doy", [label.="Day of year", units.= "d"])
                  , ("tmp", [label.="Temperature", units.= "&deg;C"])
                  , ("prc", [label.="Rainfall", units.= "mm/day"]) ]
  let plot = Plot [l1, l2] # [height.=300, aspect.=3, strokeWidth.=2]
      l1 = Lines (d.^"doy") (d.^"tmp") # [stroke.="red"]
      l2 = Lines (d.^"doy") (d.^"prc") # [stroke.="blue"]
      source = exampleSource "Eg01.hs"
  return [shamlet|
  <h3>
    Example 1 (basic plot; CSV data access)

  ^{plot}

  ^{source}
|]
