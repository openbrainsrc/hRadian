module Example.Eg03 (eg03) where

import Graphics.Radian
import ExampleUtils

eg03 :: IO Html
eg03 = do
  d <- readCSV "sim1.csv" ["t", "x", "y", "z"]
  let plot = Plot [lx, ly, lz] #
             [ title.="Time series", axisXLabel.="Time", axisYLabel.="off"
             , strokeSwitch.="Fade", strokeWidth.=2, legendSwitches.=True
             , width.=800, height.=300 ]
      str c = [c, SimplePalette c "grey"]
      lx = Lines (d.^"t") (d.^"x") # [label.="x", stroke.=str "orange"]
      ly = Lines (d.^"t") (d.^"y") # [label.="y", stroke.=str "blue"]
      lz = Lines (d.^"t") (d.^"z") # [label.="z", stroke.=str "green"]
      source = exampleSource "Eg03.hs"
  return [shamlet|
  <h3>
    Example 3 (interactive legend; stroke fading)

  ^{plot}

  ^{source}
|]
