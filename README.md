O projeto de conclusão do Inlabs, se resume na realização de compra através do site demoqa esta dividido em 3 cenários, sendo:

Cenário 1: Realizar compra de 3 produtos no site store.demoqa.com e identificar no valor total da compra se há cobrança do frete. 
O cenário contém:
  Feature "comprar_3_produtos.feature", localizado na pasta "features";
  Page Objects "home_page", "compra_demoqa_page", "carrinho_page", "dados_comprador_page", "detalhes_compra_page", localizados na pasta "pages";
  Steps "compra_3_produtos_steps", localizado na pasta step_definitions;
  A execução pode ser realizada via console, na pasta do projeto, utilizando o comando por tag "cucumber -t @comprar3produtos" ou por profile "cucumber -p comprar_3_produtos"
 Ao final da execução serão gerados:
    Evidência: "sucess-realizar_compra_de_3_produtos_no_demoqa,_exemplos_(#1)", localizada na pasta "report";
    Relatório: "comprar_3_produtos_report", localizada na pasta raíz do projeto.

Cenário 2: Adicionar 3 produtos para compra e validar se os produtos foram incrementados no contador do carrinho.
O cenário contém:
  Feature "validar_3_produtos_carrinho.feature", localizado na pasta "features";
  Page Objects "home_page", "compra_demoqa_page", localizados na pasta "pages";
  Steps "valida_3_produtos_carrinho_steps", localizado na pasta step_definitions;
  A execução pode ser realizada via console, na pasta do projeto, utilizando o comando por tag "cucumber -t @validarexibir3prod" ou por profile "cucumber -p validar_3_produtos_carrinho"
  Ao final da execução serão gerados:
    Evidência: "sucess-validar_se_existem_3_produtos_adicionados_no_carrinho_de_compras", localizada na pasta "report";
    Relatório: "validar_3_produtos_carrinho_report", localizada na pasta raíz do projeto.  

Cenário 3: Adicionar 3 produtos para compra e remover o produto mais caro.
O cenário contém:
  Feature "excluir_produto_mais_caro.feature", localizado na pasta "features";
  Page Objects "home_page", "compra_demoqa_page", "carrinho_page", localizados na pasta "pages";
  Steps "exclui_produto_mais_caro_steps", localizado na pasta step_definitions;
  A execução pode ser realizada via console, na pasta do projeto, utilizando o comando por tag "cucumber -t @excluirprodmaiscaro" ou por profile "cucumber -p excluir_produto_mais_caro"
  Ao final da execução serão gerados:
    Evidência: "sucess-excluir_produto_mais_caro_do_carrinho_de_compras", localizada na pasta "report";
    Relatório: "excluir_produtos_mais_caro_report", localizada na pasta raíz do projeto.
