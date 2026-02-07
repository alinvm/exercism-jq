def is_prime:
. as $n |
  if . % 2 == 0 then . == 2
  elif . % 3 == 0 then . == 3
  elif . % 5 == 0 then . == 5
  elif . % 7 == 0 then . == 7
  elif . % 11 == 0 then . == 11
  elif . % 13 == 0 then . == 13
  elif . % 17 == 0 then . == 17
  elif . % 19 == 0 then . == 19
  else 23 | until(. * . > $n or $n % . == 0; . + 2) | . * . > $n
  end
;
if .value == 1 then []
elif .value | is_prime then [.value]
else
  .value as $val | 
  reduce (range(2; $val | sqrt + 1)) as $factor 
  (
    {val: $val, factors: []}; 
    until(.val % $factor != 0; .val /= $factor | .factors += [$factor])
  ) |
  if .val > 1 then .factors +=[.val] | .factors else .factors end
end