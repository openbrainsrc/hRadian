module Example.Eg13 (eg13) where

import Graphics.Radian
import ExampleUtils

eg13 :: IO Html
eg13 = do
  let x = [0.01, 0.01 + (1 - 0.01) / 10000 .. 1]
      plot = Plot [ls] # [height.=300, aspect.=3, strokeWidth.=1, zoomX.=True]
      ls = Lines x (map (sin . (1/)) x) # [stroke.="red"]
      source = exampleSource "Eg13.hs"
  return [shamlet|
  <h3>
    Example 13 (functional plots)

  ^{plot}

  ^{source}
|]
