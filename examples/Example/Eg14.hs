module Example.Eg14 (eg14) where

import Graphics.Radian
import ExampleUtils

eg14 :: IO Html
eg14 = do
  let xs = [-1.0, -1.0 + 2.0 / 100.0 .. 1.0]
      plot = Plot [ls] # [height.=300, aspect.=3, strokeWidth.=1]
      ls = Lines xs (map (\x -> -x^3 + x + 1) xs) # [stroke.="red"]
      source = exampleSource "Eg14.hs"
  return [shamlet|
  <h3>
    Example 14 (functional plots, exponentiation operator,
    expression vectorisation)

  ^{plot}

  ^{source}
|]
