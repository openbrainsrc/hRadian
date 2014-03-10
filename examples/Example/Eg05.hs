module Example.Eg05 (eg05) where

import Graphics.Radian
import ExampleUtils

eg05 :: IO Html
eg05 = do
  d <- readCSV "sim1.csv" ["t", "x", "y", "z"]
  let plot = Plot (Lines (d.^"x") (d.^"y") #
                   [ strokeWidth.=2
                   , stroke.=["blue", SimplePalette "grey" "red"] ]) #
             [ title.="Trajectories", axisXLabel.="x", axisYLabel.="y"
             , strokeSwitch.="Fade", width.=500, aspect.=1 ]
      source = exampleSource "Eg05.hs"
  return [shamlet|
  <h3>
    Example 5 (stroke fade UI)

  ^{plot}

  ^{source}
|]
