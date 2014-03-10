module Example.Eg18 (eg18) where

import Graphics.Radian
import ExampleUtils

eg18 :: IO Html
eg18 = do
  d <- readCSV "vic2012ooa.csv" ["day", "tmp", "prc"] #+
       M.fromList [ ("doy", [label.="Day of year", units.= "d"])
                  , ("tmp", [label.="Temperature", units.= "&deg;C"])
                  , ("prc", [label.="Rainfall", units.= "mm/day"]) ]
  let os = [height.=300, aspect.=3, strokeWidth.=2]
      l1 = Lines (d.^"day") (d.^"tmp") # [stroke.="red"]
      l2 = Lines (d.^"day") (d.^"prc") # [stroke.="blue"]
      plot extraos = Plot [l1, l2] # os # extraos
      plot1 = plot []
      plot2 = plot [rangeX .= (50, 150)]
      plot3 = plot [rangeY .= (10, 25)]
      plot4 = plot [rangeX .= (50, 150), rangeY .= 10]
      plot5 = plot [range .= ((50, 150), (10, 25))]
      plot6 = plot [uiAxisYTransform .= AxisFromZero]
      source = exampleSource "Eg18.hs"
  return [shamlet|
  <h3>
    Example 18 (range attributes)

  ^{plot1}

  ^{plot2}

  ^{plot3}

  ^{plot4}

  ^{plot5}

  ^{plot6}

  ^{source}
|]
