Dado("que esteja na pagina de carrinho de compra no site demoqa") do
    @home = PaginaHome.new
    @home.load
    @home.acessar_comprar_produtos
    @comprar = PaginaCompra.new
    @comprar.adicionar_3_produtos_carrinho
    @carrinho = PaginaCarrinho.new
  end
  
  Quando("excluir o item mais caro da lista de produtos do carrinho") do
    @carrinho.excluir_produto_mais_caro
  end
  
  Entao("o produto sera excluido com sucesso") do
    @carrinho.conferir_2_produtos_carrinho
  end