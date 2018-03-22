class PaginaCompraok < SitePrism::Page

    element :info_frete_label, :css, "#post-30 > div > div.wpsc-transaction-results-wrap > p:nth-child(5)" 

    def validarfrete ()
        fretelabel = find(:css, "#post-30 > div > div.wpsc-transaction-results-wrap > p:nth-child(5)").text.sub 'Total Shipping: $',''
        fretelabel = fretelabel.sub ' Total: $22.00',''
        fretelabel = fretelabel.to_f
        zeros = 0
        zeros = zeros.to_f

        if fretelabel > zeros
            puts "O valor do frete foi cobrado no valor total!"
        else
            puts "Não foi cobrado frete!"
        end
#        binding.pry
    end
end