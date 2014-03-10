module Graphics.Radian where

placeholder :: String
placeholder = "Radian graphics library"





-- newtype OptionField = OptionField Text
-- -- ^ Exported as OptionField, not OptionField (..): constructable
-- -- using functions only, e.g. label, units, height, etc.

-- -- Maybe this should actually be a GADT with a phantom type parameter
-- -- to carry information about what types of values can be assigned to
-- -- what option fields?


-- data OptionValue = OptionNumber Number
--                  | OptionString Text
--                  | OptionFlag Bool
--                  | OptionColour Colour
--                  | OptionPalette Palette
--                  | ...
--
-- or:
--
-- class IsOption where
--   ...
--
-- instance Num a => IsOption a where ...

-- (.=) :: OptionField -> OptionValue -> Option

-- type Option = (OptionField, OptionValue)
-- type Options = [Option]

-- instance Default Options where
--   def = []

-- type Metadata = M.Map Text Options

-- data Axis = XAxis | X2Axis | YAxis | Y2Axis

-- data PlotData = CSVData Text [Text] Metadata
--               | JSONData Text Metadata
--               | Field PlotData Text
--               | Pluck PlotData Text
--               | Lambda [(Text, PlotData)] Text

-- or perhaps better to have a PlotData class with instances for these
-- things and normal Haskell data types.

-- readCSV :: FilePath -> [Text] -> IO PlotData
-- readJSON :: FilePath -> IO PlotData

-- (#+) :: PlotData -> Metadata -> PlotData
-- (CSVData t fs _) #+ md = CSVData t fs md
-- (JSONData t _) #+ md = JSONData t md
-- (Field pd f) #+ md = Field (pd #+ md) f
-- (Pluck pd f) #+ md = Pluck (pd #+ md) f

-- data RawRadian = Plot [Radian]
--                | PlotStack [Radian]
--                | PlotRow [Radian]
--                | PlotColumn [Radian]
--                | Lines PlotData PlotData
--                | Points PlotData PlotData
--                | Bars PlotData PlotData
--                | Histogram PlotData HistOptions
--                | RugX PlotData
--                | RugY PlotData
--                | RugXY PlotData PlotData
--                | ...

-- or what about making Plot a Monoid instance so that you can start
-- with an empty frame and mappend plot directives into it?

-- newtype Radian = Radian Options RawRadian

-- (#) :: Radian -> Options -> Radian
-- (Radian _ rr) # os = Radian os rr

-- (.^) :: PlotData -> Text -> PlotData
-- pd .^ f = Field pd f

-- (#^) :: PlotData -> Text -> PlotData
-- pd #^ f = Pluck pd f

-- type Colour = Text

-- data Palette = SimplePalette Colour Colour
--              | ...


-- Layout:
-- beside, (|||), stacked, (///), over, (===)
