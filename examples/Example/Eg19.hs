module Example.Eg19 (eg19) where

import Graphics.Radian
import ExampleUtils

eg19 :: IO Html
eg19 = do
  let x = [0.01, 0.01 + (1.00 - 0.01) / 10000 .. 1.00]
      os = [height.=300, aspect.=3, strokeWidth.=1,
            zoomX.=True, uiAxisYTransform.=True,
            axisXTransform.=AxisLog, uiAxisXTransform.=AxisLog]
      ls = Lines x (map (\x -> 1.1 + sin(1.0 / x))) # [stroke.="red"]
      plot = Plot [ls] # os
      source = exampleSource "Eg19.hs"
  return [shamlet|
  <h3>
    Example 19 (log axes)

  ^{plot}

  ^{source}
|]
