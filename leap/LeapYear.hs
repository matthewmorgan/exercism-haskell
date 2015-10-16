module LeapYear (isLeapYear)
where
  isLeapYear :: Int -> Bool
  isLeapYear year
    | year `isDivisibleBy` 400 = True
    | year `isDivisibleBy` 100 = False
    | year `isDivisibleBy` 4   = True
    | otherwise = False
    
  isDivisibleBy :: Int -> Int -> Bool
  isDivisibleBy n d = mod n d == 0