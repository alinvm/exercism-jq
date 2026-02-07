# input: a floating point number
# output: the number rounded to two decimal places
def two_decimal: ((. * 100) | round) / 100;

def period_map:
{
  "Mercury": 0.2408467,
  "Venus": 0.61519726,
  "Earth": 1.0,
  "Mars": 1.8808158,
  "Jupiter": 11.862615,
  "Saturn": 29.447498,
  "Uranus": 84.016846,
  "Neptune": 164.79132
}
;
if period_map[.planet] | not then "not a planet" | halt_error
else
  ((.seconds / 60.0 / 60.0 / 24.0 / 365.25)) as $earthYears |
  ((1.0 / period_map[.planet]) * $earthYears) | two_decimal
end
