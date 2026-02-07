if .property == "squareOfSum" then [ range(1; .input.number + 1) ] | add | . * .
elif .property == "sumOfSquares" then [ range(1; .input.number + 1) ] | map(. * .) | add 
elif .property == "differenceOfSquares" then 
  ([ range(1; .input.number + 1) ] | add | . * .) - ([ range(1; .input.number + 1) ] | map(. * .) | add)
end 