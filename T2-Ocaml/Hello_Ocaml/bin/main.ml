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

type carro = {
  modelo: string;
  ano: int;
  odometro: int;
};;

let meu_carro = {modelo="Fusca"; ano=1970; odometro=100000};;



type dias_da_semana = 
| Segunda
| Terca
| Quarta
| Quinta
| Sexta
| Sabado
| Domingo;;

Terca;;


(*Funções*)
let funcao parametro = parametro + 1;;

funcao 1;;

funcao 3*2;;  (*          ((funcao 3)*2)        *)

let multiplica a b = a*b;;

multiplica (6*6) 6;;

let rec fatorial n = 
  if n = 0 then 1
  else n * fatorial (n-1);;

(+) 2 ((+) 5 ((+) 4 3));;

int_of_float 3.14 + 2;;  (* 5 *)
float_of_int 2 +. 3.14;;  (* 5.14 *)

let add1 x = x+1;;
add1 5 |> add1;;

add1 5 |> (+) 6;;  (*       |>  operador pipe *)

multiplica 5 5 |> add1;;

let (>>)  f g x = f(g(x));;  (* criar um novo operador*)

(>>) add1 add1 6;;  

let (+) a b = a * b;;    (*novo operador pode substituir operadores existentes*)

(+) 2 3;; (*6*)
