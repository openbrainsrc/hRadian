module Example.Eg12 (eg12) where

import Graphics.Radian
import ExampleUtils

eg12 :: IO Html
eg12 = do
  let x = [0, 4 * pi / 100 .. 4 * pi]
      plot = Plot [l1, l2] # [height.=300, aspect.=3, strokeWidth.=2,
                              axisXLabel.="Time", axisYLabel.="sin(x) / cos(x)"]
      l1 = Lines x (map sin x) # [stroke.="red"]
      l2 = Lines x (map cos x) # [stroke.="blue"]
      source = exampleSource "Eg12.hs"
  return [shamlet|
  <h3>
    Example 12 (functional plots)

  ^{plot}

  ^{source}
|]
