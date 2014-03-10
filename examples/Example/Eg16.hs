module Example.Eg16 (eg16) where

import Graphics.Radian
import ExampleUtils

eg16 :: IO Html
eg16 = do
  let xs = [-1.0, -1.0 + 2.0 / 100 .. 1.0]
      os = [strokeWidth.=2, stroke .= "red"]
      plot = Plot [l1, l2] # [height.=300, aspect.=3] # os
      l1 = Lines xs (map (\x -> -x^3 + x + 1) xs)
      l2 = Lines xs (map (^2) xs) # [stroke .= "blue"]
      source = exampleSource "Eg16.hs"
  return [shamlet|
  <h3>
    Example 16 (&lt;plot-options&gt; directive)

  ^{plot}

  ^{source}
|]
