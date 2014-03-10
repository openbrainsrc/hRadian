module Example.Eg04 (eg04) where

import Graphics.Radian
import ExampleUtils

eg04 :: IO Html
eg04 = do
  d <- readCSV "sim1.csv" ["t", "x", "y", "z"]
  let plot = Plot [lx, ly, lz] #
             [ title.="Time series", axisXLabel.="Time", axisYLabel.="off"
             , strokeSwitch.="Fade", strokeWidth.=2, legendSwitches.=True
             , width.=900, aspect.=2, zoomX.=True ]
      str c = [c, SimplePalette c "grey"]
      lx = Lines (d.^"t") (d.^"x") # [label.="x", stroke.=str "orange"]
      ly = Lines (d.^"t") (d.^"y") # [label.="y", stroke.=str "blue"]
      lz = Lines (d.^"t") (d.^"z") # [label.="z", stroke.=str "green"]
      source = exampleSource "Eg04.hs"
  return [shamlet|
  <h3>
    Example 4 (X-axis zoom)

  ^{plot}

  ^{source}
|]
