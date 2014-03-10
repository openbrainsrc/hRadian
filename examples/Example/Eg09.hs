module Example.Eg09 (eg09) where

import Graphics.Radian
import ExampleUtils

eg09 :: IO Html
eg09 = do
  d <- readCSV "vic2012ooa2.csv" ["date", "tmp", "prc"] #+
       M.fromList [ ("date", [format.="date", dateFormat.= "%b"])
                  , ("tmp", [label.="Temperature", units.= "&deg;C"])
                  , ("prc", [label.="Rainfall", units.= "mm/day"]) ]
  let plot = Plot [Lines (d.^"date") (d.^"tmp")] #
               [height.=300, aspect.=3, strokeWidth.=2, stroke.="red",
                axisXLabel.="off"]
      source = exampleSource "Eg09.hs"
  return [shamlet|
  <h3>
    Example 9 (date handling)

  ^{plot}

  ^{source}
|]
