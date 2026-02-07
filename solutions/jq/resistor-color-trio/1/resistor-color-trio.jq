    def findmetric:
        if . < 1000 then 0
        else 1 + ((. / 1000) | findmetric)
        end
    ;

    (["black","brown","red","orange","yellow","green","blue","violet","grey","white"]) as $map |
    (["", "kilo", "mega", "giga"]) as $metric |
    (reduce .colors[] as $color (""; . + ($map | index($color) | tostring)) | .[0:3]) as $code |
    ($code[0:2] | tonumber) as $num |
    ($code[2:3] | tonumber) as $multiplier |
    ($num * pow(10; $multiplier)) as $value |
    ($value | findmetric) as $pow |
    {value: $value / pow(1000; $pow), unit: ($metric[$pow] + "ohms")}