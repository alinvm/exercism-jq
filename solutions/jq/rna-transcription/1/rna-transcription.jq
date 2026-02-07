def complement_map:
{
  "G": "C",
  "C": "G",
  "T": "A",
  "A": "U"
};

def toRna:
  split("") | map(complement_map[.]) | add // ""
;
