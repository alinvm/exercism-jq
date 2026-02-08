.subject as $initialTarget |
(.subject | ascii_downcase | split("") | sort | join("")) as $sortedTarget |
.candidates | 
map(select(. != $initialTarget and 
           ((. | ascii_downcase) != ($initialTarget | ascii_downcase)) and 
            (ascii_downcase | split("") | sort | join("")) == $sortedTarget))
