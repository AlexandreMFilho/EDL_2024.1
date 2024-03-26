JAVASCRIPT

1. Quais são as duas funcionalidades em conflito?

* Não ortogonalidade em escopo de variáveis
* Não ortogonalidade em tipos de variáveis

2. Explique o problema, ou seja, qual é exatamente o conflito.

* Não ortogonalidade em escopo de variáveis
É um detalhe da linguagem que para quem não está familiarizado, pode cometer erros, pois o var é acessível em qualquer lugar dentro da função, ja a let tem escopo de bloco, onde são acessíveis apenas onde foram declaradas.

* Não ortogonalidade em tipos de variáveis
É um erro que ocorre devido ao JavaScript ter a tipagem fraca, que faz com que em operações aritméticas, se colocarmos uma string com valor numérico dentro, em algumas ocasiões pode ser encarado como uma string e ser concatenado, ou como um inteiro e ser somado ou subtraído.


3. Mostre um trecho de código ilustrativo. Explique qual seria o comportamento esperado.

* Não ortogonalidade em escopo de variáveis
```Js
function exemplo() {
    if (true) {
        var mensagem1 = "Variável dentro do if";
        let mensagem2 = "Variável dentro do if";
    }
    console.log(mensagem1); // A variável 'mensagem1' é acessível fora do if
    console.log(mensagem2); // Erro. 'mensagem2' é acessível apenas dentro do if
}

exemplo();
```

* Não ortogonalidade em tipos de variáveis
```Js
console.log(5+0);   //5
console.log(5+"0"); //50  //"0" tratado como string e é concatenado
console.log(0+0);   //0
console.log("0"+0)  //00  //"0" tratado como string e é concatenado
console.log(1-1);   //0
console.log("1"-"1")  //0 //"1" apesar de serem strings, são tratados como inteiros e subtraidos
```


4. Explique a motivo por trás desse conflito. Em outras palavras, qual a justificativa para esse problema de ortogonalidade? - (assuma que o projetista da linguagem é mais esperto que nós)


5. Existe alguma proposta ou solução, no projeto da linguagem, para o problema? Qual?