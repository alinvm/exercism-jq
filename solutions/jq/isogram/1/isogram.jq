.phrase 
  | ascii_downcase
  | gsub("[^[:alpha:]]"; ""; "g") 
  | explode 
  | length as $len 
  | unique 
  | length == $len
