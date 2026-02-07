.number as $n | 
"" |
  if $n % 3 == 0 then . + "Pling" end |
  if $n % 5 == 0 then . + "Plang" end |
  if $n % 7 == 0 then . + "Plong" end |
  if . == "" then $n else . end