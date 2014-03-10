module Example.Eg34 (eg34) where

import Graphics.Radian
import ExampleUtils

eg34 :: IO Html
eg34 = do
  d1 <- linkCSV "/data/vic2012ooa.csv" ["day", "tmp", "prc"] #+
        M.fromList [ ("day", [label.="Day of year", units.= "d"])
                   , ("tmp", [label.="Temperature", units.= "&deg;C"])
                   , ("prc", [label.="Rainfall", units.= "mm/day"]) ]
  d2 <- linkJSON "/data/vic2012ooa.json" #+
        M.fromList [ ("doy",   [label.="Day of year", units.= "d"])
                   , ("month", [label.="Month"])
                   , ("tmp",   [label.="Temperature", units.= "&deg;C"])
                   , ("prc",   [label.="Rainfall", units.= "mm/day"]) ]
  let plot1 = Plot [l11, l12] # [height.=300, aspect.=3, strokeWidth.=2]
      l11 = Lines (d1.^"day") (d1.^"tmp") # [stroke.="red"]
      l12 = Lines (d1.^"day") (d1.^"prc") # [stroke.="blue"]
      plot2 = Plot [l21, l22] # [height.=300, aspect.=3, strokeWidth.=2]
      l21 = Lines (d2#^"date"#^"day") (d2#^"tmp") # [stroke.="red"]
      l22 = Lines (d2#^"date"#^"day") (d2#^"prc") # [stroke.="blue"]
      source = exampleSource "Eg34.hs"
  return [shamlet|
  <h3>
    Example 34 (data access via URL)

  ^{plot1}

  ^{plot2}

  ^{source}
|]
