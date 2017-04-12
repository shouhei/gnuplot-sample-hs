module Paths_gnuplot_sample (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/shouhei/Workspace/haskell/gnuplot-sample/.stack-work/install/x86_64-osx/lts-3.13/7.10.2/bin"
libdir     = "/Users/shouhei/Workspace/haskell/gnuplot-sample/.stack-work/install/x86_64-osx/lts-3.13/7.10.2/lib/x86_64-osx-ghc-7.10.2/gnuplot-sample-0.1.0.0-8te0n3tHxeXJBGz5R6cSUm"
datadir    = "/Users/shouhei/Workspace/haskell/gnuplot-sample/.stack-work/install/x86_64-osx/lts-3.13/7.10.2/share/x86_64-osx-ghc-7.10.2/gnuplot-sample-0.1.0.0"
libexecdir = "/Users/shouhei/Workspace/haskell/gnuplot-sample/.stack-work/install/x86_64-osx/lts-3.13/7.10.2/libexec"
sysconfdir = "/Users/shouhei/Workspace/haskell/gnuplot-sample/.stack-work/install/x86_64-osx/lts-3.13/7.10.2/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "gnuplot_sample_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "gnuplot_sample_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "gnuplot_sample_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "gnuplot_sample_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "gnuplot_sample_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
