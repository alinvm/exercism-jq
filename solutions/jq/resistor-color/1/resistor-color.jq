(["black","brown","red","orange","yellow","green","blue","violet","grey","white"]) as $map | 
(.input.color) as $index |
$map |
index($index) // $map
