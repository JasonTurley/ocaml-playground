let sign_times n m =
  let product = n * m in
    if product > 0 then 1
    else if product = 0 then 0
    else -1;;

print_int (sign_times (-88) 234);;