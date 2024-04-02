### Para instalar 

```
sudo apt-get install opam
```


```
opam init -y
```
```
eval $(opam env)
```
```
opam install ocaml-lsp-server odoc ocamlformat utop
```

Para acessar o REPL
```
utop
```


Ocaml possui:

*Redeclaração
:: -> insere no inicio da lista.
variáveis em escopo de bloco ?


## Criar um programa

*Se tiver feito `eval $(opam env)` pode rodar apartir apenas do dune.

```opam exec -- dune init proj NOMEPROGRAMA```

```opam exec -- dune build```

```opam exec -- dune exec NOMEPROGRAMA```

*Rodar em modo watch
```opam exec -- dune build -w```



fibonacci N
Multiplica_matriz N
Im_par N 