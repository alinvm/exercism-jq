.subject as $initialTarget |
(.subject | ascii_downcase | split("") | sort | join("")) as $sortedTarget |
.candidates | 
map(
  select(
        (test($initialTarget; "i") | not) and 
        (ascii_downcase | split("") | sort | join("")) == $sortedTarget))
