module Example.Eg10 (eg10) where

import Graphics.Radian
import ExampleUtils

eg10 :: IO Html
eg10 = do
  d <- readCSV "vic2012ooa2.csv" ["date", "tmp", "prc"] #+
       M.fromList [ ("date", [format.="date"])
                  , ("tmp", [label.="Temperature", units.= "&deg;C"])
                  , ("prc", [label.="Rainfall", units.= "mm/day"]) ]
  let plot = Plot [l1, l2] # [height.=300, aspect.=3, strokeWidth.=2]
      l1 = Lines (d.^"date") (d.^"tmp") # [stroke.="red"]
      l2 = Lines
           (Lambda [("date", d.^"date")]
                   "midMonths(unique($date#getMonth()), 2012)")
           (Lambda [("date", d.^"date"), ("prc", d.^"prc")]
                   "meanBy($prc, $date#getMonth())") #
           [stroke.="blue"]
      source = exampleSource "Eg10.hs"
  return [shamlet|
  <h3>
    Example 10 (data aggregation functions)

  ^{plot}

  <br>
  <p>The <code>midMonths</code> function here is not part of the
     standard plot library, but is instead set up in the Angular
     controller for this partial.  This is an easy way to bring
     functions into scope for plotting expressions.

  ^{source}
|]
