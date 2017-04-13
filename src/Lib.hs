module Lib
    ( someFunc
    ) where

{--import Graphics.Gnuplot.Advanced
import Graphics.Gnuplot.MultiPlot
import Graphics.Gnuplot.Terminal.X11
import Graphics.Gnuplot.Graph.TwoDimensional--}
import Numeric.LinearAlgebra
import Graphics.Plot

f :: (Floating a) => a -> a
f x = sin x

someFunc :: IO ()
someFunc = do
  let x = linspace 1000 (-pi,pi)
  mplot [f x]
