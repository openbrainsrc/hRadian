module Example.Eg59 (eg59) where

import Graphics.Radian
import ExampleUtils

eg59 :: IO Html
eg59 = do
  d <- readCSV "iris.csv" [ "sepal_length","sepal_width","petal_length"
                          ,"petal_width","species" ] #+
       M.fromList [ ("species",
                     [categoryOrder.= [ "I. versicolor"
                                      , "I. virginica"
                                      , "I. setosa" ]]) ]
  let plot = Plot [ps] #
             [ width.=600, aspect.=1,
               axisXLabel.="Species", axisYLabel.="Petal length",
               marker.="circle", markerSize.=100, stroke.="none",
               orderX.=["I. virginica", "I. versicolor", "I. setosa"] ]
      irispal = discretePalette [ ("I. setosa", "red")
                                , ("I. versicolor", "green")
                                , ("I. virginica", "blue") ]
      ps = Points (d.^"species") (d.^"petal_length") #
           [fill.=irispal(d.^"species"), jitterX.=True]
      source = exampleSource "Eg59.hs"
  return [shamlet|
  <h3>
    Example 59 (categorical points)

  ^{plot}

  ^{source}
|]
