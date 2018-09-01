let min a b =
  if a < b then a else b;;

let square x = x * x;;

let has_smallest_square m n =
  if square m < square n then m
  else if square m = square n then (min m n)
  else n;;

print_int (has_smallest_square 4 6);;
print_int (has_smallest_square (-5) 5);;
print_int (has_smallest_square 7 3);;