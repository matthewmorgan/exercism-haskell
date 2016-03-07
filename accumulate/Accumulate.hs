module Accumulate(accumulate)
  where
    accumulate :: (a -> b) -> [a] -> [b]          --takes two args, a function accepting type a and producing type b, and an array of a's, returns an array of b's
    accumulate _ [] = []                          --empty args return empty array
    accumulate f (x:xs) = f x : accumulate f xs   --function and list returns the passed function operating recursively on the list elements

--this version thanks to tfausak via GitHub