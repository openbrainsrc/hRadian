module Example.Eg11 (eg11) where

import Graphics.Radian
import ExampleUtils

eg11 :: IO Html
eg11 = do
  d <- readCSV "vic2012ooa2.csv" ["date", "tmp", "prc"] #+
       M.fromList [ ("date", [format.="date"])
                  , ("tmp", [label.="Temperature", units.= "&deg;C"])
                  , ("prc", [label.="Rainfall", units.= "mm/day"]) ]
  let plot = Plot [ls, bs] # [height.=300, aspect.=3]
      ls = Lines (d.^"date") (d.^"tmp") # [stroke.="red", strokeWidth.=2]
      bs = Bars
           (Lambda [("date", d.^"date")]
                   "midMonths(unique($date#getMonth()), 2012)")
           (Lambda [("date", d.^"date"), ("prc", d.^"prc")]
                   "meanBy($prc, $date#getMonth())") #
           [axes.=(XAxis, Y2Axis),
            strokeWidth.=2, fill.="lightblue", fillOpacity.=0.5, stroke.="blue"]
      source = exampleSource "Eg11.hs"
  return [shamlet|
  <h3>
    Example 11 (bar charts)

  ^{plot}

  ^{source}
|]
