.sentence |
  gsub("[^[:alpha:]]"; "") |
  ascii_downcase |
  explode |
  unique |
  length == 26
