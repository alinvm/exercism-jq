((.x * .x + .y * .y) | sqrt) as $hyp |
if $hyp <= 1 then 10
elif $hyp <= 5 then 5
elif $hyp <= 10 then 1
else 0
end