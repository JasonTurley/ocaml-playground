(* len_eq - Returns true if two argument lists are of equal length, false otherwise *)

let rec len_eq list1 list2 =
    match list1 with 
        [] -> (match list2 with 
            [] -> true
            | (y :: ys) -> false)

        | (x :: xs) -> ( match list2 with
            [] -> false
            | (y :: ys) -> len_eq xs ys );;
