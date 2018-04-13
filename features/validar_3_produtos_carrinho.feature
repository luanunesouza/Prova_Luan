#language: pt
#utf-8

@exibir3prod
Funcionalidade: Exibir 3 produtos adicionados no carrinho de compras
    Eu como cliente do site da demoqa
    Quero realizar a exclusao do produto mais caro do carrinho
    Para validar se o produto foi excluido com sucesso

@validarexibir3prod
Cenario: Validar se existem 3 produtos adicionados no carrinho de compras
    Dado que esteja na pagina de produtos a venda
    Quando adicionar 3 produtos ao carrinho
    Entao sera exibido o valor de 3 produtos adicionados no carrinho com sucesso