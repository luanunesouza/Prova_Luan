#language: pt
#utf-8

@comprademoqa
Funcionalidade: Realizar compra no site demoqa
    Eu como cliente do site da demoqa
    Quero comprar produtos
    Para realizar uma compra com sucesso

@comprar
Esquema do Cenario: Realizar compra de produtos no demoqa
    Dado que esteja no site demoqa
    Quando realizar a compra de produtos e preencher "<Nome>" "<Sobrenome>" "<Endereco>" "<Cidade>" "<Estado>" "<Pais>" "<Phone>" "<Email>"
    Entao a compra sera realizada com sucesso

 Exemplos:
     | Nome | Sobrenome | Endereco | Cidade  | Estado | Pais   | Phone      | Email              |
     | Luan | Nunes     | Rua 1    | Osasco  | SP     | Brazil | 97777-7777 | luan@bol.com.br    |
     | Leon | Kennedy   | Rua 2    | Raccon  | SP     | Brazil | 98888-8888 | kennedy@bol.com.br |