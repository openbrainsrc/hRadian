module Example.Eg57 (eg57) where

import Graphics.Radian
import ExampleUtils

eg57 :: IO Html
eg57 = do
  let x = [0, 4 * pi / 100 .. 2 * pi]
      siny = map sin x
      cosy = map cos x
      os = [ height.=300, aspect.=3, strokeWidth.=2,
             axisXLabel.="Time", axisYLabel.="sin(x) / cos(x)" ]
      p = Plot [ Lines x (map sin x) # [stroke.="red"]
               , Lines x (map cos x) # [stroke.="blue"] ]
      plot1 = p # [ axisXMinorTicks.=4 ]
      plot2 = p # [ axisXTicks.=20 ]
      plot3 = p # [ axisXTicks.=[0, pi, 2*pi, 3*pi, 4*pi] ]
      plot4 = p # [ axisXMinorTicks.=3
                  , axisXTicks.=[ (0,"0"), (pi,"&pi;"), (2*pi,"2&pi;")
                                , (3*pi, "3&pi;"), (4*pi, "4&pi;") ] ]
      source = exampleSource "Eg57.hs"
  return [shamlet|
  <h3>
    Example 57 (explicit ticks)

  ^{plot1}

  ^{plot2}

  ^{plot3}

  ^{plot4}

  ^{source}
|]
