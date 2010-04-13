module Main where

import System.Environment
import System.Exit
import Text.EditDistance

main :: IO ()
main = do
  args <- getArgs
  (fn1, fn2) <- case args of
                  [fn1,fn2] -> return (fn1, fn2)
                  _ -> putStrLn "Usage: textdist file1 file2" >> exitFailure
  f1 <- readFrom fn1
  f2 <- readFrom fn2
  let d = levenshteinDistance defaultEditCosts f1 f2
  print d

readFrom :: String -> IO String
readFrom "-" = getContents
readFrom fn = readFile fn
