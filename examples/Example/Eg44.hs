module Example.Eg44 (eg44) where

import Graphics.Radian
import ExampleUtils

eg44 :: IO Html
eg44 = do
  let x = [0, 2 * pi / 100 .. 2 * pi]
      plot = ((p1 ||| p2) === (p3 ||| p4)) #
             [height.=800, aspect.=1, strokeWidth.=2, axisXLabel.="Time"]
      p1 = Plot [Lines x (map sin x)] #
           [title.="Top left", stroke.="red", axisYLabel.="sin(x)"]
      p2 = Plot [Lines x (map cos x)] #
           [title.="Top right", stroke.="blue", axisYLabel.="cos(x)"]
      p3 = Plot [Lines x (map cos x)] #
           [title.="Bottom left", stroke.="blue", axisYLabel.="cos(x)"]
      p4 = Plot [Lines x (map sin x)] #
           [title.="Bottom right", stroke.="red", axisYLabel.="sin(x)"]
      source = exampleSource "Eg44.hs"
  return [shamlet|
  <h3>
    Example 44 (layout #3)

  <p>
    Laid out as a 2 &times; 2 grid (manual):

  ^{plot}

  ^{source}
|]
