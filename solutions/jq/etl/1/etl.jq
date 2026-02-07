.legacy 
  | with_entries(
      (.key | tonumber) as $k 
      | .value[] 
      | { 
          "key": (. | ascii_downcase), 
          "value": $k
        }
  ) 