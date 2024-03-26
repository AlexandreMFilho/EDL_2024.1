1. Do que se trata o código? Qual a fonte/link?
O algortimo de criptografia, Cifra de César.
É um código que criptografa e descriptografa texto codificados com esta cifra, dada chave de mutação.

[Link Cesar JS](https://the-algorithms.com/pt/algorithm/caesar-cipher?lang=javascript)
[Link Cesar C++](https://the-algorithms.com/pt/algorithm/caesar-cipher?lang=c-plus-plus)

2. Qual é a característica única de cada código (não das linguagens)?
Em C++, o código é maior e mais estruturado, com a main, implementação da função ciphers e a implementação da utilização e visualização em teste. 
Em Javascript o código é menor devido a utilização da sua abstração com arrow functions, utilização das funções map, reduce, replace que permitem economia de escrita de código.

3. Compare a legibilidade e redigibilidade entre os códigos. Seja explícito sobre qual parte do código (linha/coluna).
Em C++ podemos ver detalhes da implementação, da forma como é feita a codificação em cifra da string de entrada, através do loop for que passa por cada caractere, a definição da função de encriptação e decriptação.
Ja em JavaScript devido a abstração, a legibilidade fica comprometida, pelo uso de funções como map, reduce, replace que escondem detalhes da forma que é feita a alteração da entrada, inclusive não se sabe qual o tipo de entrada, e devido ao grande uso de arrow functions as vezes fica confuso a criação e uso de variáveis e suas funções.


```Js

const caesarCipher = (str, rotation) => {
  if (typeof str !== 'string' || !Number.isInteger(rotation) || rotation < 0) {
    throw new TypeError('Arguments are invalid')
  }

  const alphabets = new Array(26)
    .fill()
    .map((_, index) => String.fromCharCode(97 + index)) // generate all lower alphabets array a-z

  const cipherMap = alphabets.reduce(
    (map, char, index) => map.set(char, alphabets[(rotation + index) % 26]),
    new Map()
  )

  return str.replace(/[a-z]/gi, (char) => {
    if (/[A-Z]/.test(char)) {
      return cipherMap.get(char.toLowerCase()).toUpperCase()
    }

    return cipherMap.get(char)
  })
}
export default caesarCipher
```

```C++
/*
 * \note This program implements caesar cipher for only uppercase English alphabet characters (i.e. A-Z). 
 * 
 * @author [Deep Raval](https://github.com/imdeep2905)
 */
#include <iostream>
#include <string>
#include <cassert>

namespace ciphers {

    namespace caesar {   
        namespace {
             
            inline char get_char(const int x) {
                // By adding 65 we are scaling 0-25 to 65-90. 
                // Which are in fact ASCII values of A-Z. 
                return char(x + 65); 
            }
            inline int get_value(const char c) {
                // A-Z have ASCII values in range 65-90.
                // Hence subtracting 65 will scale them to 0-25.
                return int(c - 65);
            }
        } // Unnamed namespace
        std::string encrypt (const std::string &text, const int &shift) {
            std::string encrypted_text = ""; // Empty string to store encrypted text
            for (char c : text) { // Going through each character
                int place_value = get_value(c); // Getting value of character (i.e. 0-25)
                place_value = (place_value + shift) % 26; // Applying encryption formula
                char new_char = get_char(place_value); // Getting new character from new value (i.e. A-Z)
                encrypted_text += new_char; // Appending encrypted character
            }
            return encrypted_text; // Returning encrypted text
        }      
        std::string decrypt (const std::string &text, const int &shift) {
            std::string decrypted_text = ""; // Empty string to store decrypted text
            for (char c : text) { // Going through each character
                int place_value = get_value(c); // Getting value of character (i.e. 0-25)
                place_value = (place_value - shift) % 26;// Applying decryption formula
                if(place_value < 0) { // Handling case where remainder is negative 
                    place_value = place_value + 26;
                }
                char new_char = get_char(place_value); // Getting original character from decrypted value (i.e. A-Z)
                decrypted_text += new_char; // Appending decrypted character
            }
            return decrypted_text; // Returning decrypted text
        }
    } // namespace caesar
} // namespace ciphers


void test() {
    // Test 1
    std::string text1 = "ALANTURING";
    std::string encrypted1 = ciphers::caesar::encrypt(text1, 17);
    std::string decrypted1 = ciphers::caesar::decrypt(encrypted1, 17);
    assert(text1 == decrypted1);
    std::cout << "Original text : " << text1;
    std::cout << " , Encrypted text (with shift = 21) : " << encrypted1;
    std::cout << " , Decrypted text : "<< decrypted1 << std::endl;
    // Test 2
    std::string text2 = "HELLOWORLD";
    std::string encrypted2 = ciphers::caesar::encrypt(text2, 1729);
    std::string decrypted2 = ciphers::caesar::decrypt(encrypted2, 1729);
    assert(text2 == decrypted2);
    std::cout << "Original text : " << text2;
    std::cout << " , Encrypted text (with shift = 1729) : " << encrypted2;
    std::cout << " , Decrypted text : "<< decrypted2 << std::endl;
}

int main() {
    test();
    return 0;
}

```