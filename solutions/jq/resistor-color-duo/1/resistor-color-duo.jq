(["black","brown","red","orange","yellow","green","blue","violet","grey","white"]) as $map |
reduce .colors[] as $color (""; . + ($map | index($color) | tostring)) |
.[0:2] |
tonumber
