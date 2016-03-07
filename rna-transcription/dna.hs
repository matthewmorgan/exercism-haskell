module DNA(toRNA)
  where
    toRNA :: String -> String
    toRNA = map transform

    transform :: Char -> Char
    transform nuc
      | nuc == 'C' = 'G'
      | nuc == 'G' = 'C'
      | nuc == 'A' = 'U'
      | nuc == 'T' = 'A'
      | otherwise = error "invalid nucleotide"

