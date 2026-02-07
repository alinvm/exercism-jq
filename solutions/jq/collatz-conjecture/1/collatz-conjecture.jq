def count_collatz($count):
  if (. == 1) then $count 
  elif (. % 2 == 0) then (. / 2) | count_collatz($count + 1)
  else
    (. * 3 + 1) | count_collatz($count + 1)
  end;

def steps:
  . | tonumber | 
  if (. <= 0) then "Only positive integers are allowed" | halt_error else . end |
  count_collatz(0);


