import Data.List

delta :: Char -> Int
delta 'U' = 1
delta 'D' = -1

valleys :: String -> Int
valleys = length . filter (all (< 0)) . groupBy (\x y -> x /= 0 && y /= 0) .
  scanl (+) 0 . map delta

main :: IO()
main = interact $ show . valleys . head . tail . words
