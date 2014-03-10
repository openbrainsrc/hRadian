module Example.Eg21 (eg21) where

import Graphics.Radian
import ExampleUtils

plotx, ploty :: [Double]
plotx = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
ploty = [2, 4, 8, 16, 32, 48, 24, 12, 6, 3]

eg21 :: IO Html
eg21 = do
  let plot = Plot [bs] # [height.=300, aspect.=3, strokeWidth.=2,
                          stroke.="blue", fill.="skyblue"]
      bs = Bars plotx ploty # [barWidth.=0.9]
      source = exampleSource "Eg21.hs"
  return [shamlet|
  <h3>
    Example 21 (bar chart)

  ^{plot}

  ^{source}
|]
