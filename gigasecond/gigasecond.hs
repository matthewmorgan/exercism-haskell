module Gigasecond (fromDay) where

import Data.Time

secondsPerGS = 10 ^ 9

fromDay :: UTCTime -> UTCTime
fromDay start = addUTCTime secondsPerGS start
