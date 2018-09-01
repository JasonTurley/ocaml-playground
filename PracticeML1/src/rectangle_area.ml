let rectangle_area l w =
  if l >= 0.0 && w >= 0.0 then l *. w
  else (-1.0);;
  
  
print_float (rectangle_area 2.0 10.5);;
print_string "\n";;
print_float (rectangle_area (-0.4) 10.33);;