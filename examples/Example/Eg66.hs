module Example.Eg66 (eg66) where

import Graphics.Radian
import ExampleUtils

eg66 :: IO Html
eg66 = do
  d <- readJSON "fathers.json"
  let ages = (flatten $ d .^ "fathers" #^ "daughters") #^ "age"
      x = seqStep 0 (length ages) 1
      plot = Plot [ps] # [height.=300, aspect.=1.6]
      ps = Points x ages # [markerSize.=100]
      source = exampleSource "Eg66.hs"
  return [shamlet|
  <h3>
    Example 66 (hierarchical JSON data)

  ^{plot}

  ^{source}
|]
