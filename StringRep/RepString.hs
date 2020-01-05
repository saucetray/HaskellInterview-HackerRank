import Data.List

repAs :: String -> Int
repAs = length . filter (== 'a')

main :: IO()
main = do
  string <- getLine
  n <- getLine

  let len = length string
      repAmount = ((read n) `div` len)
      aAmount = repAmount * (repAs string) + (repAs $ take ((read n) - (repAmount * len)) string)

  putStrLn $ show aAmount

