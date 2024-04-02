let rec fibo x = (
    if x == 0 then 0 
    ||if x == 1 then 1
    ||(fibo (x-2) + fibo (x-1))
)


let () = print_endline fibo 3;;
