module Lib(runFizzBuzz, fizzBuzz) where 

runFizzBuzz :: IO()
runFizBuzz = mapM_ (putStrLn . fizzBuzz)[1..100]

fizzBuzz :: Int -> String 
fizzBuzz n 
  | mod n 3 && mod n 5 == 0 = "FizzBuzz"
  | mod n 3 == 0            = "Fizz"
  | mod n 5 == 0            = "Buzz"
  | otherwise               = show n
