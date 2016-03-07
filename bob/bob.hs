module Bob(responseFor) where

import Data.Char
import Data.List

responseFor :: String -> String
responseFor input
  | silence = "Fine. Be that way!"
  | shouting = "Whoa, chill out!"
  | question = "Sure."
  | otherwise = "Whatever."
  where
    cleanedInput = filter (\x -> ord x > 32 && ord x < 126) input
    silence = null cleanedInput
    onlyLetters = filter isLetter input
    allcaps = map toUpper onlyLetters
    shouting = allcaps == onlyLetters && onlyLetters /= ""
    question = "?" `isSuffixOf` cleanedInput