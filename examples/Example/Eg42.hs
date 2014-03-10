module Example.Eg42 (eg42) where

import Graphics.Radian
import ExampleUtils

eg42 :: IO Html
eg42 = do
  let x = [0, 2 * pi / 100 .. 2 * pi]
      plot = PlotRow [p1, p2] # [height.=300, aspect.=2,
                                 strokeWidth.=2, axisXLabel.="Time"]
      p1 = Plot [Lines x (map sin x)] # [stroke.="red", axisYLabel.="sin(x)"]
      p2 = Plot [Lines x (map cos x)] # [stroke.="blue", axisYLabel.="cos(x)"]
      source = exampleSource "Eg42.hs"
  return [shamlet|
  <h3>
    Example 42 (layout #1)

  <p>
    Laid out as a row:

  ^{plot}

  ^{source}
|]
