let () = print_endline "Hello, World!"



(* Lista: elas são imutáveis *)
let a = [1; 2; 3; 4; 5];;
a;;
(* Array: elas são mutáveis *)
let b = [|1;2;3;4;5;6|];;
b.(3)<-10;;
b;;
(* Tupla *)
let c = (1,"a");;
c;;

(* Record 
type carro = {
  modelo: string;
  ano: int;
  odometro: int;
};;

let meu_carro = {modelo="Fusca"; ano=1970; odometro=100000};;

*)
(*
type dias_da_semana = 
| Segunda
| Terca
| Quarta
| Quinta
| Sexta
| Sabado
| Domingo;;

Segunda;;
*)



