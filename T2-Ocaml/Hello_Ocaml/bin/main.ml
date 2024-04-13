let a = [|1;0|];;
let b = [|0;1|];;
let mat = [|a;b|];;
let add1 x = x + 1;;
let rec print_matrix m =
  Array.iter (fun x -> Array.iter (fun y -> print_int y; print_string " ") x; print_newline ()) m;;
print_matrix mat;;
  let rec map_matrix f m =
  Array.map (fun x -> Array.map f x) m;;

print_matrix (map_matrix add1 mat);;
