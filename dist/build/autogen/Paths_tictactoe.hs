module Paths_tictactoe (
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

bindir     = "/home/twashing/.cabal/bin"
libdir     = "/home/twashing/.cabal/lib/i386-linux-ghc-7.8.4/tictactoe-0.1.0.0"
datadir    = "/home/twashing/.cabal/share/i386-linux-ghc-7.8.4/tictactoe-0.1.0.0"
libexecdir = "/home/twashing/.cabal/libexec"
sysconfdir = "/home/twashing/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "tictactoe_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "tictactoe_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "tictactoe_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "tictactoe_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "tictactoe_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
