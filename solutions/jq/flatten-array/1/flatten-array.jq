def flat:
  if type == "array" then .[] | flat
  elif type == "null" | not then .
  else empty
  end
;

.array | map(flat)
