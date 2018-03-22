class PaginaCarrinho < SitePrism::Page

    element :carrinho_button, "#header_cart" 
    element :continue_button, ".step2"

    element :excluir_prod1, :css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_0.alt > td.wpsc_product_remove.wpsc_product_remove_0 > form > input[type='submit']:nth-child(4)"
    element :excluir_prod2, :css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_1 > td.wpsc_product_remove.wpsc_product_remove_1 > form > input[type='submit']:nth-child(4)"
    element :excluir_prod3, :css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_2.alt > td.wpsc_product_remove.wpsc_product_remove_2 > form > input[type='submit']:nth-child(4)"

    def comprar ()
        carrinho_button.click

        prod1 = find(:css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_0.alt > td:nth-child(4) > span").text.sub! '$',''
        prod1 = prod1.to_f

        prod2 = find(:css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_1 > td:nth-child(4) > span").text.sub! '$',''
        prod2 =prod2.to_f
         
        prod3 = find(:css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_2.alt > td:nth-child(4) > span").text.sub! '$','' 
        prod3=prod3.to_f

        #Exclui o maior dos itens
        if prod1 > prod2 && prod1 > prod3
            excluir_prod1.click
        elsif prod2 > prod1 && prod2 > prod3
                excluir_prod2.click
            else
                excluir_prod3.click
        end   

        continue_button.click
    end
end