class PaginaHome < SitePrism::Page
    
    element :product_category_menu, "#menu-item-33"

#    def abrir_pagina_demoqa
        set_url "http://store.demoqa.com/"
#    end

    def acessar_comprar_produtos
        product_category_menu.click    
    end    
end