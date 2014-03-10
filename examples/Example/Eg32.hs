module Example.Eg32 (eg32) where

import Graphics.Radian
import ExampleUtils

eg32 :: IO Html
eg32 = do
  d <- readCSV "tstdata.csv" ["n", "x"]
  let plot = Plot [hist] # [ height.=300, aspect.=2]
      hist = Histogram (d.^"x") [histNBins.=10, histYVar.=Freqs]
      source = exampleSource "Eg32.hs"
  return [shamlet|
  <h3>
    Example 32 (histograms #1)

  ^{plot}

  ^{source}
|]
