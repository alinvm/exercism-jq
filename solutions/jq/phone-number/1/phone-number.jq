.phrase | gsub("[-() .\\+]"; "") |
if test("[[:alpha:]]") then "letters not permitted" | halt_error 
elif test("[[:punct:]]") then "punctuations not permitted" | halt_error 
elif length < 10 then "must not be fewer than 10 digits" | halt_error
elif length == 10 then
  if test("^0") then "area code cannot start with zero" | halt_error 
  elif test("^1") then "area code cannot start with one" | halt_error 
  elif test("^[0-9]{3}0") then "exchange code cannot start with zero" | halt_error 
  elif test("^[0-9]{3}1") then "exchange code cannot start with one" | halt_error 
  end
elif length == 11 then
  if test("^[^1]") then "11 digits must start with 1" | halt_error
  elif test("^10") then "area code cannot start with zero" | halt_error 
  elif test("^11") then "area code cannot start with one" | halt_error 
  elif test("^1[0-9]{3}0") then "exchange code cannot start with zero" | halt_error 
  elif test("^1[0-9]{3}1") then "exchange code cannot start with one" | halt_error 
  end
elif length > 11 then "must not be greater than 11 digits" | halt_error 
end |
gsub("^1"; "")