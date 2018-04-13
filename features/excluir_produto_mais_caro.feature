#language: pt
#utf-8

@excluirprodcaro
Funcionalidade: Excluir produto mais caro do carrinho
    Eu como cliente do site da demoqa
    Quero realizar a exclusao do produto mais caro do carrinho
    Para validar se o produto foi excluido com sucesso

@excluirprodmaiscaro
Cenario: Excluir produto mais caro do carrinho de compras
    Dado que esteja na pagina de carrinho de compra no site demoqa
    Quando excluir o item mais caro da lista de produtos do carrinho
    Entao o produto sera excluido com sucesso