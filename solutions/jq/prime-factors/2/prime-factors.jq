if .value == 1 then []
else
  .value as $val | 
  reduce (range(2; $val | sqrt + 1)) as $factor 
  (
    {val: $val, factors: []}; 
    until(.val % $factor != 0; .val /= $factor | .factors += [$factor])
  ) |
  if .val > 1 then .factors +=[.val] | .factors else .factors end
end