module Lib
    ( someFunc
    ) where

import Graphics.Gnuplot.Simple

someFunc :: IO ()
someFunc = do
{--  let xs = linearScale 1000 (0, 2 * pi::Float)
  let ys = fmap sin xs
  let points = zip xs ys--}
  plotPath [(Title "hello")] [(0, 0), (1::Int,1), (2,2)]
