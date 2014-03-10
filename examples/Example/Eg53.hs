module Example.Eg53 (eg53) where

import Graphics.Radian
import ExampleUtils

eg53 :: IO Html
eg53 = do
  d <- readCSV "tstdata.csv" ["n", "x"]
  let plot = Plot [hist] # [ height.=300, aspect.=2,
                             axisXTransform.=LogTransform ]
      hopts = [histNBins.=10, histTransform.=LogTransform, histYVar.=Freqs]
      hist = Histogram (abs $ d.^"x") hopts
      source = exampleSource "Eg53.hs"
  return [shamlet|
  <h3>
    Example 53 (histograms #2)

  <p>
    Here, we have a log-transformed histogram: the histogram bins are
    calculated on log-transformed data, and the plot uses a
    log-transformed X-axis so we end up with equal sized bins in log
    coordinates.

  ^{plot}

  ^{source}
|]
