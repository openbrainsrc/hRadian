module Example.Eg43 (eg43) where

import Graphics.Radian
import ExampleUtils

eg43 :: IO Html
eg43 = do
  let x = [0, 2 * pi / 100 .. 2 * pi]
      plot = PlotColumn [p1, p2] # [height.=300, aspect.=0.5,
                                    strokeWidth.=2, axisXLabel.="Time"]
      p1 = Plot [Lines x (map sin x)] # [stroke.="red", axisYLabel.="sin(x)"]
      p2 = Plot [Lines x (map cos x)] # [stroke.="blue", axisYLabel.="cos(x)"]
      source = exampleSource "Eg43.hs"
  return [shamlet|
  <h3>
    Example 43 (layout #2)

  <p>
    Laid out as a column:

  ^{plot}

  ^{source}
|]
