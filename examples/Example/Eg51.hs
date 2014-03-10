module Example.Eg51 (eg51) where

import Graphics.Radian
import ExampleUtils

d :: PlotData
d = let x = [1..10]
        y = [2, 4, 8, 16, 32, 48, 24, 12, 6, 3]
    in MapData [("x", x), ("y", x)]

eg51 :: IO Html
eg51 = do
  let os = [ height.=300, aspect.=3, strokeWidth.=2, fill.="skyblue" ]
      plot1 = Plot [bs1] # os
      plot2 = Plot [bs2] # os
      bs = Bars (d.^"x") (d.^"y") # [barWidth.="50px", stroke.="blue"]
      bs1 = bs # [barWidth.="50px", stroke.="blue"]
      bs2 = bs # [barWidth.="-1px", stroke.="none"]
      source = exampleSource "Eg51.hs"
  return [shamlet|
  <h3>
    Example 51 (bar chart: pixel width bars)

  ^{plot1}

  ^{plot2}

  ^{source}
|]
