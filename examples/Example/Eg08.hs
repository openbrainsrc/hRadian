module Example.Eg08 (eg08) where

import Graphics.Radian
import ExampleUtils

eg08 :: IO Html
eg08 = do
  d <- readCSV "sim1.csv" ["t", "x", "y", "z"]
  let plot = PlotStack [p1, p2] # [width.=600, height.=400]
      p1 = Plot [tsx, tsy, tsz] #
           [title.="Time series", strokeWidth.=2, legendSwitches.=True]
      p2 = Plot [traj] # [title.="Trajectories", stroke.="blue"]
      tsx = Lines (d.^"t") (d.^"x") # [stroke.="orange", label.="x"]
      tsy = Lines (d.^"t") (d.^"y") # [stroke.="blue", label.="y"]
      tsz = Lines (d.^"t") (d.^"z") # [stroke.="green", label.="z"]
      traj = Lines (d.^"x") (d.^"y")
      source = exampleSource "Eg08.hs"
  return [shamlet|
  <h3>
    Example 8 (plot stack)

  ^{plot}

  ^{source}
|]
