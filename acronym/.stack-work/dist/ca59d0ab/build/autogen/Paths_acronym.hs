{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_acronym (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [1,0,0,1] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\dev\\haskell\\exercism\\haskell\\acronym\\.stack-work\\install\\02136e14\\bin"
libdir     = "C:\\dev\\haskell\\exercism\\haskell\\acronym\\.stack-work\\install\\02136e14\\lib\\x86_64-windows-ghc-8.0.2\\acronym-1.0.0.1-7o9nNZydhmoHPNbGLqPTeM"
dynlibdir  = "C:\\dev\\haskell\\exercism\\haskell\\acronym\\.stack-work\\install\\02136e14\\lib\\x86_64-windows-ghc-8.0.2"
datadir    = "C:\\dev\\haskell\\exercism\\haskell\\acronym\\.stack-work\\install\\02136e14\\share\\x86_64-windows-ghc-8.0.2\\acronym-1.0.0.1"
libexecdir = "C:\\dev\\haskell\\exercism\\haskell\\acronym\\.stack-work\\install\\02136e14\\libexec"
sysconfdir = "C:\\dev\\haskell\\exercism\\haskell\\acronym\\.stack-work\\install\\02136e14\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "acronym_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "acronym_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "acronym_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "acronym_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "acronym_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "acronym_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
