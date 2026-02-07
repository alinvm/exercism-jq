def expand:
  split("") | 
  map(
    if . == "V" then "violets"
    elif . == "C" then "clover"
    elif . == "R" then "radishes"
    else "grass"
    end
  )
;

(.student[0:1] | ascii_downcase | explode[] | tonumber - 97) as $index |
.diagram | 
    split("\n") | 
    map([ scan(".{2}"; "g") ]) |
    transpose[$index] |
    map(expand) |
    flatten