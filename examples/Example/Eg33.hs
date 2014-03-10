module Example.Eg33 (eg33) where

import Graphics.Radian
import ExampleUtils

eg33 :: IO Html
eg33 = do
  let x = [0, 4 * pi / 100 .. 4 * pi]
      plot = Plot [l1, l2] # [height.=300, aspect.=3, strokeWidth.=2,
                              axisXLabel.="Time", axisYLabel.="sin(x) / cos(x)"]
      bgr = bandedPalette [(0.0, "blue"), (0.5, "red")]
      gyo = bandedPalette [(0.0, "blue"), (0.5, "red")]
      y1 = map sin x ; l1 = Lines x y1 # [stroke.=bgr(y1)]
      y2 = map cos x ; l2 = Lines x y2 # [stroke.=gyo(y2)]
      source = exampleSource "Eg33.hs"
  return [shamlet|
  <h3>
    Example 33 (banded palettes)

  ^{plot}

  ^{source}
|]
