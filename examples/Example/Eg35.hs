module Example.Eg35 (eg35) where

import Graphics.Radian
import ExampleUtils

eg35 :: IO Html
eg35 = do
  d <- readCSV "vic2012ooa2.csv" ["date", "tmp", "prc"] #+
       M.fromList [ ("date", [format.="date", dateFormat.= "%b"])
                  , ("tmp", [label.="Temperature", units.= "&deg;C"])
                  , ("prc", [label.="Rainfall", units.= "mm/day"]) ]
  let plot = Plot [a1, l1, l2] #
               [height.=300, aspect.=3, strokeWidth.=2, rangeY2.=(-10),
                axisY2Label.="Precipitation (mm/month)"]
      mmonths = Lambda [("d", d)]
                       "midMonths(unique($d.date#getMonth()),2012)"
      mprecip = Lambda [("d", d)] "sumBy($d.prc,$d.date#getMonth())"
      msd = Lambda [("d", d)] "sdevBy(d.prc,d.date#getMonth())"
      a1 = Area [mmonths, (mprecip-msd, mprecip+msd)] # [fill .= "lightblue"]
      l1 = Lines mmonths mprecip # [stroke.="blue"]
      l2 = Lines (d.^"date") (d.^"tmp") # [stroke.="red"]
      source = exampleSource "Eg35.hs"
  return [shamlet|
  <h3>
    Example 35 (area plot)

  ^{plot}

  <br>
  <p>The <code>midMonths</code> function here is not part of the
     standard plot library, but is instead set up in the Angular
     controller for this partial.  This is an easy way to bring
     functions into scope for plotting expressions.

  ^{source}
|]
