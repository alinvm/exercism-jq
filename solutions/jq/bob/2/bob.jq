.heyBob | 
  if test("^\\s*$") then "Fine. Be that way!" 
  else
    gsub("[^[:alpha:]\\?]|\\?(?! *$)"; ""; "g") |
      if test("^[A-Z]+$") then "Whoa, chill out!"
      elif test("^[A-Z]+\\?$") then "Calm down, I know what I'm doing!"
      elif test("^.*\\?$") then "Sure."
      else "Whatever."
      end
  end
