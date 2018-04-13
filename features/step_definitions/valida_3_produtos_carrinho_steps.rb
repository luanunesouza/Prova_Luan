Dado("que esteja na pagina de produtos a venda") do
    @home = PaginaHome.new
    @home.load
    @home.acessar_comprar_produtos
  end
  
  Quando("adicionar {int} produtos ao carrinho") do |int|
    @comprar = PaginaCompra.new
    @comprar.adicionar_3_produtos_carrinho
  end
  
  Entao("sera exibido o valor de {int} produtos adicionados no carrinho com sucesso") do |int|
    @comprar.validar_3_produtos_carrinho
  end
  