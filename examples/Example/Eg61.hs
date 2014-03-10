module Example.Eg61 (eg61) where

import Graphics.Radian
import ExampleUtils

d :: PlotData
d =
  JSONData
  "[{\"sex\":\"female\",\"env\":\"rural\",\"age\":\"50-54\",\"rate\":15.5}, \
  \ {\"sex\":\"female\",\"env\":\"rural\",\"age\":\"55-59\",\"rate\":20.2}, \
  \ {\"sex\":\"female\",\"env\":\"rural\",\"age\":\"60-64\",\"rate\":32.1}, \
  \ {\"sex\":\"female\",\"env\":\"rural\",\"age\":\"65-69\",\"rate\":48.0}, \
  \ {\"sex\":\"female\",\"env\":\"rural\",\"age\":\"70-74\",\"rate\":65.5}, \
  \ {\"sex\":\"female\",\"env\":\"urban\",\"age\":\"50-54\",\"rate\":15.5}, \
  \ {\"sex\":\"female\",\"env\":\"urban\",\"age\":\"55-59\",\"rate\":20.2}, \
  \ {\"sex\":\"female\",\"env\":\"urban\",\"age\":\"60-64\",\"rate\":32.1}, \
  \ {\"sex\":\"female\",\"env\":\"urban\",\"age\":\"65-69\",\"rate\":48.0}, \
  \ {\"sex\":\"female\",\"env\":\"urban\",\"age\":\"70-74\",\"rate\":65.5}, \
  \ {\"sex\":\"male\",\"env\":\"rural\",\"age\":\"50-54\",\"rate\":15.5 }, \
  \ {\"sex\":\"male\",\"env\":\"rural\",\"age\":\"55-59\",\"rate\":20.2 }, \
  \ {\"sex\":\"male\",\"env\":\"rural\",\"age\":\"60-64\",\"rate\":32.1 }, \
  \ {\"sex\":\"male\",\"env\":\"rural\",\"age\":\"65-69\",\"rate\":48.0 }, \
  \ {\"sex\":\"male\",\"env\":\"rural\",\"age\":\"70-74\",\"rate\":65.5 }, \
  \ {\"sex\":\"male\",\"env\":\"urban\",\"age\":\"50-54\",\"rate\":15.5 }, \
  \ {\"sex\":\"male\",\"env\":\"urban\",\"age\":\"55-59\",\"rate\":20.2 }, \
  \ {\"sex\":\"male\",\"env\":\"urban\",\"age\":\"60-64\",\"rate\":32.1 }, \
  \ {\"sex\":\"male\",\"env\":\"urban\",\"age\":\"65-69\",\"rate\":48.0 }, \
  \ {\"sex\":\"male\",\"env\":\"urban\",\"age\":\"70-74\",\"rate\":65.5 } ]" #+
  M.fromList [ ("sex", [ order.=["female", "male"] ])
             , ("env", [ order.=["rural", "urban"] ])
             , ("age", [ order.=["50-54", "55-59", "60-64",
                                 "65-69", "70-74"] ]) ]

eg61 :: IO Html
eg61 = do
  d <- readCSV "iris.csv" [ "sepal_length","sepal_width","petal_length"
                          ,"petal_width","species" ] #+
       M.fromList [ ("species",
                     [categoryOrder.= [ "I. versicolor"
                                      , "I. virginica"
                                      , "I. setosa" ]]) ]
  let os = [ width.=600, aspect.=1.5, axisXLabel.=False, axisYLabel.="Rate" ]
      mfpal = discretePalette [("female", "#FF7F7F"), ("male", "#7F7FFF")]
      comppal = discretePalette [ (["female", "rural"], "#FF7F7F")
                                , (["female", "urban"], "#FF0000")
                                , (["male",   "rural"], "#7F7FFF")
                                , (["male",   "urban"], "#0000FF") ]
      plot1 = Plot [Bars (d#^"sex") (d1#^"rate") #
                    [ fill.=mfpal(d#^"sex"), aggregation.="mean"] ] # os
      plot2 = Plot [Bars [d#^"sex", d#^"env"] (d1#^"rate") #
                    [ fill.=comppal [d#^"sex", d#^"env"],
                      aggregation.="mean" ] ] # os
      plot3 = Plot [Bars [d#^"sex", d#^"age"] (d1#^"rate") #
                    [ fill.=mfpal(d#^"sex"), aggregation.="mean",
                      axisXLabels.=(d#^"age") ] ] #
              os # [ groupX.=1 ]
      plot4 = Plot [Bars [d#^"age", d#^"sex"] (d1#^"rate") #
                    [ fill.=mfpal(d#^"sex"), aggregation.="mean",
                      axisXLabels.=(d#^"age") ] ] #
              os # [ groupX.=1 ]
      source = exampleSource "Eg61.hs"
  return [shamlet|
  <h3>
    Example 61 (categorical bars #2)

  ^{plot1}

  ^{plot2}

  ^{plot3}

  ^{plot4}

  ^{source}
|]
