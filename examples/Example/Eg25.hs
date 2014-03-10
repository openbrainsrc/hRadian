module Example.Eg25 (eg25) where

import Graphics.Radian
import ExampleUtils

eg25 :: IO Html
eg25 = do
  d <- readCSV "sim1.csv" ["t", "x", "y", "z"]
  let plot = Plot [ps] #
             [ width.=600, aspect.=1,
               axisXLabel.="x", axisYLabel.="y",
               marker.="square", markerSize.=25 ]
      rbpal x = palette [(0.0, "#FF0000"), (1.0, "#0000FF")]
      ps = Lines (d.^"x") (d.^"y") # [fill.=rbpal(d.^"z")]
      source = exampleSource "Eg25.hs"
  return [shamlet|
  <h3>
    Example 25 (points plot with basic palette)

  ^{plot}

  ^{source}
|]
