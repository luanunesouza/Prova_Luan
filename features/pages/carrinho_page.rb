class PaginaCarrinho < SitePrism::Page

    element :carrinho_button, "#header_cart" 
    element :continue_button, ".step2"
    element :excluir_iphone_5_button, :css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_0.alt > td.wpsc_product_remove.wpsc_product_remove_0 > form > input[type='submit']:nth-child(4)"
    element :excluir_magic_mouse_button, :css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_1 > td.wpsc_product_remove.wpsc_product_remove_1 > form > input[type='submit']:nth-child(4)"
    element :excluir_ipod_nano_blue_button, :css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_2.alt > td.wpsc_product_remove.wpsc_product_remove_2 > form > input[type='submit']:nth-child(4)"
    element :quantidade_itens_carrinho, '#header_cart'

    def comprar_produtos_lista
        carrinho_button.click
        continue_button.click
    end

    def excluir_produto_mais_caro
        carrinho_button.click
        iphone_5_valor_label = find(:css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_0.alt > td:nth-child(4) > span").text.sub! '$',''
        iphone_5_valor_label = iphone_5_valor_label.to_f

        magic_mouse_label = find(:css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_1 > td:nth-child(4) > span").text.sub! '$',''
        magic_mouse_label = magic_mouse_label.to_f
         
        ipode_nano_blue_label = find(:css, "#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_2.alt > td:nth-child(4) > span").text.sub! '$','' 
        ipode_nano_blue_label = ipode_nano_blue_label.to_f

        #Exclui o maior dos itens
        if iphone_5_valor_label > magic_mouse_label && iphone_5_valor_label > ipode_nano_blue_label
            excluir_iphone_5_button.click
        elsif magic_mouse_label > iphone_5_valor_label && magic_mouse_label > ipode_nano_blue_label
                excluir_magic_mouse_button.click
            else
                excluir_ipod_nano_blue_button.click
        end   
    end

    def conferir_2_produtos_carrinho
        quantidade_itens = quantidade_itens_carrinho.text.sub ' item | Cart Checkout"',''
        quantidade_itens = quantidade_itens.to_i

        if quantidade_itens == 2
            puts 'A exclusão do item mais caro foi realizada com sucesso'
        else
            puts 'Houve um erro na exclusão do produto'
        end
    end
end