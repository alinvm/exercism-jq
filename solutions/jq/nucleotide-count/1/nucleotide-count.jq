.strand | 
  if test("[^ACGT]") then "Invalid nucleotide in strand" | halt_error end | 
  split("") |
  reduce .[] as $letter (
    {"A":0,"C":0,"G":0,"T":0};
    .[$letter] += 1
  )