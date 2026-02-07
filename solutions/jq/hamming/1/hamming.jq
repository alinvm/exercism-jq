def calc($strand1; $strand2):
  if ($strand1 | length) == 0 then 0
  else (if $strand1[0] == $strand2[0] then 0 else 1 end) + calc($strand1[1:]; $strand2[1:])
  end
;

if (.strand1 | length) != (.strand2 | length) then "strands must be of equal length" | halt_error
else 
  (.strand1 | split("")) as $strand1 | (.strand2 | split("")) as $strand2 | calc($strand1; $strand2) 
end