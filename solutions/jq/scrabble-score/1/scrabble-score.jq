def values:
{
  ("A, E, I, O, U, L, N, R, S, T" | split(", ") | join("")): 1,
  ("D, G" | split(", ") | join("")): 2,
  ("B, C, M, P" | split(", ") | join("")): 3,
  ("F, H, V, W, Y" | split(", ") | join("")): 4,
  "K": 5,
  ("J, X" | split(", ") | join("")): 8,
  ("Q, Z" | split(", ") | join("")): 10
};

def getValue:
    . as $letter | 
    (values | keys[] | select(test($letter; "i"))) as $key |
    values[$key] 
;

.word | split("") | map(getValue) | add // 0

