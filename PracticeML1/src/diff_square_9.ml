(* Squares a float and subtracts 9.0 *)
let square_minus_9 x = 
  (x *. x) -. 9.0;;

let diff_square_9 m n =
  if m < n then square_minus_9 n
  else if m >= n && (m /. 2.0) > n then square_minus_9 m
  else if m >= n && (m /. 2.0) <= n then square_minus_9 (m -. n)
  else 0.0;;

print_float (diff_square_9 2.0 (1.2));;