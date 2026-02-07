# Given a numeric score between 0 and 100, output a letter grade
# - "A" is 90% - 100%
# - "B" is 80% - 89%
# - "C" is 70% - 79%
# - "D" is 60% - 69%
# - "F" is  0% - 59%

def letter_grade:
  if (. <= 59) then "F"
  elif (60 <= . and . <= 69) then "D"
  elif (70 <= . and . <= 79) then "C"
  elif (80 <= . and . <= 89) then "B"
  else "A"
  end
;


# Given an object that maps a student's name to their grade,
# generate an object that maps the letter grade to the number of 
# students with that grade

def count_letter_grades:
  reduce .[] as $grade ({"A": 0, "B": 0, "C": 0, "D": 0, "E": 0, "F": 0}; .[$grade // 0 | letter_grade] += 1);
