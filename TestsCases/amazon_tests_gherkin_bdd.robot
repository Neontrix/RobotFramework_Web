*** Settings ***
Documentation  Essa suíte testa o site da Amazon.com.br
Resource       ../Pages/amazon_page.robot


*** Keywords ***
Caso de Teste 01 - Acesso ao menu "Ofertas do Dia"
    [Documentation]  Este teste verifica o menu eletrônicos do site da Amazon.com.br
    ...              e verifica a categoria computadores e informática
    # [Tags]           menus  categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"


Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]  Este teste verifica a busca de um produto
    # [Tags]           busca_produtos  lista_busca
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página