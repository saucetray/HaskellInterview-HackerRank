cloudJumps :: [Int] -> Int
cloudJumps (_:x:y:ys)
  | y == 1       = 1 + (cloudJumps $ x:y:ys)
  | y /= 1       = 1 + (cloudJumps $ y:ys)
  | otherwise    = 0
cloudJumps [x, y] = 1
cloudJumps _ = 0

main :: IO()
main = interact $ show . cloudJumps . map read . tail . words
