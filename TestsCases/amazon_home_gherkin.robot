*** Settings ***
Documentation       Essa suíte testa o site da Amazon.com.br

Resource            ../Pages/amazon_home.robot
Resource            ../Pages/amazon_search.robot


*** Keywords ***
Caso de Teste 01 - Acesso ao menu "Ofertas do Dia"
    [Documentation]    Este teste verifica o menu eletrônicos do site da Amazon.com.br
    ...    e verifica a categoria computadores e informática
    # [Tags]    menus    categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"