class PaginaDadosComprador < SitePrism::Page

    element :shipping_same_checkbox, "#shippingSameBilling"
    element :fist_name_field, "#wpsc_checkout_form_2"
    element :last_name_field, "#wpsc_checkout_form_3"
    element :adress_field, "#wpsc_checkout_form_4"
    element :city_field, "#wpsc_checkout_form_5"
    element :state_field, "#wpsc_checkout_form_6"
    element :country_combobox, "#uniform-wpsc_checkout_form_7"
    element :phone_field, "#wpsc_checkout_form_18"
    element :email_field, "#wpsc_checkout_form_9"
    element :purchase_button, :css, "#wpsc_shopping_cart_container > form > div.wpsc_make_purchase > div > div > span > input"

    def dados_do_comprador (nome, sobrenome, endereco, cidade, estado, pais, telefone, email)
        shipping_same_checkbox.set(true)
        fist_name_field.set(nome)
        last_name_field.set(sobrenome)
        adress_field.set(endereco)
        city_field.set(cidade)
        state_field.set(estado)
        country_combobox.select(pais)
        phone_field.set(telefone)
        email_field.set(email)
        purchase_button.click
    end
end