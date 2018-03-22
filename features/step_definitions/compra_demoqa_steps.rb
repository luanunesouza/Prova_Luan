Dado("que esteja no site demoqa") do
  @home = PaginaHome.new
  @home.load
end

Quando("realizar a compra de produtos e preencher {string} {string} {string} {string} {string} {string} {string} {string}") do |nome, sobrenome, endereco, cidade, estado, pais, telefone, email|
  @comprar = PaginaCompra.new
  @comprar.addcarrinho
  expect(@comprar.qtdditens)==(3)
  @carrinho = PaginaCarrinho.new
  @carrinho.comprar
  @dadoscomprador = PaginaDadosComprador.new
  @dadoscomprador.dados nome, sobrenome, endereco, cidade, estado, pais, telefone, email
  @compraok = PaginaCompraok.new
  @compraok.validarfrete
end

Entao("a compra sera realizada com sucesso") do
    validacompra = expect(page).to have_content "Thank you, your purchase is pending"
    validacompra = validacompra.to_s
    if validacompra == 'true'
        puts "Compra realizada com sucesso"
    else
        puts "Ops! Algo deu errado."
    end
end