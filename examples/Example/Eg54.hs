module Example.Eg54 (eg54) where

import Graphics.Radian
import ExampleUtils

eg54 :: IO Html
eg54 = do
  d1 <- readCSV "dat1.csv" ["n", "x"]
  d2 <- readCSV "dat2.csv" ["n", "x"]
  let plot = Plot [hist1, hist2] # [ height.=300, aspect.=2, stroke.="black" ]
      ext = extent [d1.^"x", d2.^"x"]
      hist1 = Histogram (d1.^"x")
              [histNBins.=20, histYVar.=Freqs, histBinRange.=ext] #
              [fill.="red", barWidth.=0.4, barOffset.=(-0.2)]
      hist2 = Histogram (d2.^"x")
              [histNBins.=20, histYVar.=Freqs, histBinRange.=ext] #
              [fill.="blue", barWidth.=0.4, barOffset.=0.2]
      source = exampleSource "Eg54.hs"
  return [shamlet|
  <h3>
    Example 54 (histograms #3)

  ^{plot}

  ^{source}
|]
