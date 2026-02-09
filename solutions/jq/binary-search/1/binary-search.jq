def search($target; $left; $right):  
  if $right - $left <= 1 then if .[$right] == $target then $right else empty end
  else 
    ($left + (($right - $left) / 2) | floor) as $mid | debug("mid is ", $mid) |

    if .[$mid] == target then $mid
    elif .[$mid] > $target then search($target; $left; $mid - 1)
    else search($target; $mid + 1; $right)
    end
  end
;

if .value < .array[0] or .value > .array[-1] then "value not in array" | halt_error end
.value as $target | .array | search($target; 0; length - 1) // ("value not in array" | halt_error)