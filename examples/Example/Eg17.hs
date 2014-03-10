module Example.Eg17 (eg17) where

import Graphics.Radian
import ExampleUtils

eg17 :: IO Html
eg17 = do
  d <- readCSV "sim1-short.csv" ["t", "x", "y", "z"]
  let os = [height .= 600, aspect .= 1,
            axisXLabel .= "x", axisYLabel .= "y",
            stroke .= "black", fill .= "yellow",
            marker .= "square", markerSize .= 25]
      plot = Plot [Points (d.^"x") (d.^"y")] # os
      source = exampleSource "Eg17.hs"
  return [shamlet|
  <h3>
    Example 17 (basic points plot)

  ^{plot}

  ^{source}
|]
