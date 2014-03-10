module Example.Eg20 (eg20) where

import Graphics.Radian
import ExampleUtils

eg20 :: IO Html
eg20 = do
  d <- readCSV "vic2012ooa2.csv" ["date", "tmp", "prc"] #+
       M.fromList [ ("date", [format.="date", dateFormat.= "%b"])
                  , ("tmp", [label.="Temperature", units.= "&deg;C"])
                  , ("prc", [label.="Rainfall", units.= "mm/day"]) ]
  let plot = Plot [l1, l2] # [height.=300, aspect.=3, strokeWidth.=2,
                             axisY2Label.="Rainfall (mm/month)"]
      l1 = Lines (d.^"date") (d.^"tmp") # [stroke.="red"]
      l2 = LinesP (X, Y2)
           (Lambda [("date", d.^"date")]
                   "midMonths(unique($date#getMonth()), 2012)")
           (Lambda [("date", d.^"date"), ("prc", d.^"prc")]
                   "sumBy($prc, $date#getMonth())") # [stroke.="blue"]
      source = exampleSource "Eg20.hs"
  return [shamlet|
  <h3>
    Example 20 (second axes)

  ^{plot}

  ^{source}
|]
