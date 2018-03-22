class PaginaCompra < SitePrism::Page

    element :product_category_menu, "#menu-item-33"
    element :product1_button, :css, "#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input"
    element :product2_button, :css, "#default_products_page_container > div.default_product_display.product_view_40.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input"
    element :product3_button, :css, "#default_products_page_container > div.default_product_display.product_view_64.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input"  
    element :quantidade_itens, :xpath, '//*[@id="header_cart"]/a/em[1]'
    element :waitformsg, :css, '#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > div.alert.addtocart > p'
    element :waitformsg3, :css, '#default_products_page_container > div.default_product_display.product_view_64.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > div.alert.addtocart > p'

    def addcarrinho ()
        product_category_menu.click
        product1_button.click
        wait_for_waitformsg

        product2_button.click
        wait_for_waitformsg

        product3_button.click
        wait_for_waitformsg3
    end

    def qtdditens
        quantidade_itens.text
    end
end