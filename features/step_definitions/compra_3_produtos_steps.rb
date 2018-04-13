Dado("que esteja no site demoqa") do
    @home = PaginaHome.new
    @home.load
    @home.acessar_comprar_produtos
  end
  
  Quando("realizar a compra de tres produtos") do
    @comprar = PaginaCompra.new
    @comprar.adicionar_3_produtos_carrinho
    @carrinho = PaginaCarrinho.new
    @carrinho.comprar_produtos_lista
  end
  
  Quando("preencher {string} {string} {string} {string} {string} {string} {string} {string}") do |nome, sobrenome, endereco, cidade, estado, pais, telefone, email|
    @dados_comprador = PaginaDadosComprador.new
    @dados_comprador.dados_do_comprador nome, sobrenome, endereco, cidade, estado, pais, telefone, email
  end
  
  Entao("a compra sera realizada com sucesso") do
    @detalhes_compra = PaginaDetalhesCompra.new
  #  @detalhes_compra.validar_compra_sucesso
  end