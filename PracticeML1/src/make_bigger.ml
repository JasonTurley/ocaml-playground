let make_bigger x y =
    if x > 0.0 then
        x +. y
    else if x <= 0.0 && y < 1.0 then
        y +. 1.0
    else
        y *. y;;

let ret = make_bigger (-3.5) 0.0;;
print_float ret;;