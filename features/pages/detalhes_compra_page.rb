class PaginaDetalhesCompra < SitePrism::Page

    element :info_frete_label, :css, "#post-30 > div > div.wpsc-transaction-results-wrap > p:nth-child(5)" 

    def validar_frete
        frete_label = find(:css, "#post-30 > div > div.wpsc-transaction-results-wrap > p:nth-child(5)").text.sub 'Total Shipping: $',''
        frete_label = frete_label.sub ' Total: $22.00',''
        frete_label = frete_label.to_f
        zeros = 0
        zeros = zeros.to_f

        if frete_label > zeros
            puts "O valor do frete foi cobrado no valor total!"
        else
            puts "Não foi cobrado frete!"
        end
    end

    #def validar_compra_sucesso
    #    @mensagem_compra_sucesso = expect(page).to have_content "Thank you, your purchase is pending"
    #    @mensagem_compra_sucesso = @mensagem_compra_sucesso.to_s
        
    #    if mensagem_compra_sucesso == 'true'
    #        puts "Compra realizada com sucesso"
    #    else
    #        puts "Ops! Algo deu errado."
    #    end
    #end
end