class PaginaCompra < SitePrism::Page

    element :iphone5_add_cart_button, :css, "#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input"
    element :magic_mouse_add_cart_button, :css, "#default_products_page_container > div.default_product_display.product_view_40.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input"
    element :ipod_nano_add_cart_button, :css, "#default_products_page_container > div.default_product_display.product_view_64.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input"  
    element :quantidade_itens_carrinho, '#header_cart'    

    def adicionar_3_produtos_carrinho
        iphone5_add_cart_button.click

        magic_mouse_add_cart_button.click

        ipod_nano_add_cart_button.click

        #Aguardar 15 segundos para o proximo step
        sleep(15)
    end

    def validar_3_produtos_carrinho
        quantidade_itens = quantidade_itens_carrinho.text.sub ' item | Cart Checkout"',''
        quantidade_itens = quantidade_itens.to_i

        if quantidade_itens == 3
            puts "Existem 3 produtos no carrinho"
        else
            puts "Ops! Não há 3 produtos no carrinho"
        end
    end
end