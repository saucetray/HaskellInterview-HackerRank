import Data.List

pairs :: [Int] -> Int
pairs (x:y:ys) = if x == y then 1 + pairs ys else pairs $ y:ys
pairs _ = 0

main = interact $ show . pairs . sort . map read . tail . words

