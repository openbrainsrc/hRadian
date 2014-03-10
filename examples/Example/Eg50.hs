module Example.Eg50 (eg50) where

import Graphics.Radian
import ExampleUtils

eg50 :: IO Html
eg50 = do
  d <- readCSV "iris.csv" [ "sepal_length","sepal_width","petal_length"
                          ,"petal_width","species" ]
  let plot = Plot [ps] #
             [ width.=600, aspect.=1,
               axisXLabel.="Sepal length", axisYLabel.="Petal length",
               marker.="circle", markerSize.=100 ]
      irispal = discretePalette [ ("I. setosa", "red")
                                , ("I. versicolor", "green")
                                , ("I. virginica", "blue") ]
      ps = Points (d.^"sepal_length") (d.^"petal_length") #
           [fill.=irispal(d.^"species")]
      source = exampleSource "Eg50.hs"
  return [shamlet|
  <h3>
    Example 50 (categorical palettes)

  ^{plot}

  ^{source}
|]
