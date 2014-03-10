module Example.Eg47 (eg47) where

import Graphics.Radian
import ExampleUtils

eg47 :: IO Html
eg47 = do
  let x = [0, 2 * pi / 100 .. 2 * pi]
      plot = PlotGrid [p1, p2, p3, p4] #
             [width.=800, aspect.=1, rows.=2, cols.=2,
              strokeWidth.=2, axisXLabel.="Time"]
      p1 = Plot [Lines x (map sin x)] #
           [title.="Top left", stroke.="red", axisYLabel.="sin(x)"]
      p2 = Plot [Lines x (map cos x)] #
           [title.="Top right", stroke.="blue", axisYLabel.="cos(x)"]
      p3 = Plot [Lines x (map cos x)] #
           [title.="Bottom left", stroke.="blue", axisYLabel.="cos(x)"]
      p4 = Plot [Lines x (map sin x)] #
           [title.="Bottom right", stroke.="red", axisYLabel.="sin(x)"]
      source = exampleSource "Eg47.hs"
  return [shamlet|
  <h3>
    Example 47 (layout #6)

  <p>
    Laid out as a 2 &times; 2 grid (automatic):

  ^{plot}

  ^{source}
|]
