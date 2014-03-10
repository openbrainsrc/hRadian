module Example.Eg15 (eg15) where

import Graphics.Radian
import ExampleUtils

eg15 :: IO Html
eg15 = do
  let xs = [0.0, 10.0 / 200 .. 10.0]
      plot = Plot [ls] # [height.=300, aspect.=3,
                          strokeWidth.=2, stroke .= "red"]
      ls = Lines xs (Lambda [("x", xs)] "normal($x,mu,sigma)")
      source = exampleSource "Eg15.hs"
  return [shamlet|
  <h3>
    Example 15 (data binding)

  <div .form-inline>
    <label>
      Mean
    <input type="range" min=0 max=10 step=0.01
           ng-model="mu" ng-init="mu=5">
    <label>
      &nbsp;&nbsp;Standard deviation
    <input type="range" min=0.01 max=10 step=0.01
           ng-model="sigma" ng-init="sigma=1">
  <br>

  ^{plot}

  ^{source}
|]
