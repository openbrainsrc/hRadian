module Example.Eg73 (eg73) where

import Graphics.Radian
import ExampleUtils

eg73 :: IO Html
eg73 = do
  d <- readJSON "vic2012aoo.json" #+
       M.fromList [ ("doy",   [label.="Day of year", units.="d"])
                  , ("month", [label.="Month"])
                  , ("tmp",   [label.="Temperature", units.="&deg;C"])
                  , ("prc",   [label.="Rainfall", units.="mm/day"]) ]
  let os = [ height.=400, aspect.=1,
             axisXLabel.="x", axisYLabel.="y",
             fill.="blue", stroke.="none", marker.="circle", markerSize.=16 ]
      ps = Points (d.^"x") (d.^"y")
      plot1 = Plot [ps, RugX (d.^"x") # [ stroke.="black" ]] # os
      plot2 = Plot [ps, RugY (d.^"y") # [ stroke.="black" ]] # os
      plot3 = Plot [ps, RugXY (d.^"x") (d.^"y") # [ stroke.="black" ]] # os
      plot4 = Plot [ps, RugXY (d.^"x") (d.^"y") #
                        [ stroke.="red", tickLength.=10 ]] # os
      source = exampleSource "Eg73.hs"
  return [shamlet|
  <h3>
    Example 73 (rug plots)

  ^{plot1}

  ^{plot2}

  ^{plot3}

  ^{plot4}

  ^{source}
|]
