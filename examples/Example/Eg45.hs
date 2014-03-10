module Example.Eg45 (eg45) where

import Graphics.Radian
import ExampleUtils

eg45 :: IO Html
eg45 = do
  let x = [0, 2 * pi / 100 .. 2 * pi]
      plot = PlotRow [p1, p2] # [height.=300, aspect.=2,
                                 strokeWidth.=2, axisXLabel.="Time"]
      p1 = Plot [Lines x (map sin x)] #
           [layoutShare.=1, stroke.="red", axisYLabel.="sin(x)"]
      p2 = Plot [Lines x (map cos x)] #
           [layoutShare.=2, stroke.="blue", axisYLabel.="cos(x)"]
      source = exampleSource "Eg45.hs"
  return [shamlet|
  <h3>
    Example 45 (layout #4)

  <p>
    Differing ratios (simple case):

  ^{plot}

  ^{source}
|]
