module Example.Eg06 (eg06) where

import Graphics.Radian
import ExampleUtils

eg06 :: IO Html
eg06 = do
  d <- readCSV "sim1.csv" ["t", "x", "y", "z"]
  let plot = Plot (Lines (d.^"x") (d.^"y") #
                   [ strokeWidth.=2, stroke.=str ]) #
             [ title.="Trajectories", axisXLabel.="x", axisYLabel.="y"
             , strokeSwitchLabel.="Stroke colour:", strokeSwitch.=ss
             , width.=500, aspect.=1.5 ]
      ss = ["Blue", "Grey -> red", "Black -> green"]
      str = ["blue", SimplePalette "grey" "red", SimplePalette "black" "green"]
      source = exampleSource "Eg05.hs"
  return [shamlet|
  <h3>
    Example 6 (stroke colour selection UI)

  ^{plot}

  ^{source}
|]
