module Example.Eg46 (eg46) where

import Graphics.Radian
import ExampleUtils

eg46 :: IO Html
eg46 = do
  let x = [0, 2 * pi / 100 .. 2 * pi]
      plot = PlotRow [c1, c2] # [height.=300, width.=800,
                                 strokeWidth.=2, axisXLabel.="Time"]
      c1 = PlotColumn [p1, p2, p3] # [layoutShare.=1]
      c2 = Plot [Lines x (map cos x)] #
           [layoutShare.=3, stroke.="blue", axisYLabel.="cos(x)"]
      p1 = Plot [Lines x (map sin x)] #
           [title.="Copy 1", stroke.="red", axisYLabel.="sin(x)"]
      p2 = Plot [Lines x (map sin x)] #
           [title.="Copy 2", stroke.="red", axisYLabel.="sin(x)"]
      p3 = Plot [Lines x (map sin x)] #
           [title.="Copy 3", stroke.="red", axisYLabel.="sin(x)"]
      source = exampleSource "Eg46.hs"
  return [shamlet|
  <h3>
    Example 46 (layout #5)

  <p>
    Differing ratios (more complex case):

  ^{plot}

  ^{source}
|]
