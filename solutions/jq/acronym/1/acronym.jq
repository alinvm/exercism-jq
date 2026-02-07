.phrase
  | gsub("['_]"; "")
  | [ (scan("\\b[[:alnum:]']"; "g") | ascii_upcase ) ]
  | add
