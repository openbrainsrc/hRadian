module Example.Eg27 (eg27) where

import Graphics.Radian
import ExampleUtils

d :: PlotData
d = let names = ["Tom", "Harriet", "Antonia", "Ada", "Foo",
                 "Bar", "Baz", "Jim", "Ted", "Jerry"]
        ages = [35.1, 1.5, 35.2, 4.5, 10.1, 80.4, 5.2, 60.1, 70.1, 40.6]
        heights = [6.3, 2.1, 5.1, 3.1, 3.9, 9.1, 3.2, 8.1, 9.1, 7]
        sexes = ["male", "female", "female", "female", "female",
                 "female", "male", "male", "male", "male"]
        salaries = [20, 10, 25, 12, 15, 22, 13, 24, 18, 16]
    in MapData [("name", names), ("age", ages), ("height", heights),
                ("sex", sexes), ("salaryhr", salaries)]

eg27 :: IO Html
eg27 = do
  let plot = Plot [ps] #
             [ width.=600, aspect.=1,
               axisXLabel.="Age", axisYLabel.="Height",
               stroke.="black" fill.="none" markerSize.=75 ]
      mfmark = discretePalette [("female", "circle"), ("male", "square")]
      ps = Points (d.^"age") (d.^"height") # [marker.=mfmark(d.^"sex")]
      source = exampleSource "Eg27.hs"
  return [shamlet|
  <h3>
    Example 27 (points plot with discrete marker palette)

  ^{plot}

  ^{source}
|]
