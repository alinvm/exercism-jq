.series as $series | 
(.series | length) as $n |
.sliceLength as $slicelen |

if $n == 0 then "series cannot be empty" | halt_error
elif $slicelen > $n then "slice length cannot be greater than series length" | halt_error
elif $slicelen == 0 then "slice length cannot be zero" | halt_error
elif $slicelen < 0 then "slice length cannot be negative" | halt_error
else 
  [ range(0; $n - $slicelen + 1) | $series[0 + .: . + $slicelen] ]
end