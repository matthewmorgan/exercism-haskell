--export module method signatures and sublist value
module Sublist (Sublist(..), sublist) where

--bring only the method we need
import Data.List (isInfixOf)

-- data structure (like an enum in Java)
-- Eq is the 'equals' method, Show allows us to print the structure
-- in this case we go with default, but we could define override using 'instance'

data Sublist = Sublist | Superlist | Equal | Unequal
  deriving (Eq, Show)

-- type definition takes a list of types 'a', another list of types 'a', and return a Sublist type
sublist :: Eq a => [a] -> [a] -> Sublist
-- signature takes two arguments
sublist xs ys
-- in the case of first arg identical to second arg
  | xs == ys          = Equal
-- in the case of first arg exists contiguously withing second arg
  | xs `isInfixOf` ys = Sublist
-- in the case of second arg exists contiguously withing first arg
  | ys `isInfixOf` xs = Superlist
-- fall through to 'Unequal'
  | otherwise         = Unequal

