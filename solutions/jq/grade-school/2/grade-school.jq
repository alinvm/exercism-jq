if .property == "roster" then 
  .input.students | unique_by(.[0]) | sort_by(.[1]) | transpose[0] // []
else
  .input.desiredGrade as $grade | .input.students | unique_by(.[0]) | map(select(.[1] == $grade) | .[0])
end
