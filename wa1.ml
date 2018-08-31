(* Basic Ocaml Environments *)

2 + 5;;
(* Expression: No effect on env *)

let x = 6;;
(* env = {x -> 6} *)

let y = x * 2;;
(* env = {x -> 6, y -> 12} *)

let z = 
  let y = x + 2     (* y is in local (lexical) scope; it is not added to env *)
  in [y;x];;
(* env = {x -> 6, y-> 12, z -> [8; 6]} *)

let w = x + y
in 2 + w;;
(* 2 + w is an expression; does not effect env *)

let g y = y + x;; (* let g = fun y -> y + x *)
(* env: {function name -> <function body, current env>} + current env *)
(* env = {g -> <y -> y + x, {x -> 6, y -> 12, z -> [8;6]}>,
          x -> 6, y -> 12, z -> [8;6]} *)

let x = g x;;   (* g (x) = 12 *)
(* Note: only update the outer env, not the one nested in the function *)
(* env = {g -> <y -> y + x, {x -> 6, y -> 12, z -> [8; 6]}>, x -> 12, y -> 12, z -> [8; 6]}*)

let p x y = (x, y);;
(* env = {p -> <x -> fun y -> (x , y), {x -> 12, g -> <y -> y + x, 
  {z -> [8; 6], y -> 12, x -> 6}>, z -> [8; 6], y -> 12}>, 
  x -> 12, g -> <y -> y + x, {z -> [8; 6], y -> 12, x -> 6}>, 
  z -> [8; 6], y -> 12} *)