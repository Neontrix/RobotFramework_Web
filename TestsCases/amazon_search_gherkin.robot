*** Settings ***
Documentation       Essa suíte testa o site da Amazon.com.br

Resource            ../Pages/amazon_home.robot
Resource            ../Pages/amazon_search.robot


*** Keywords ***
Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Este teste verifica a busca de um produto
    # [Tags]    busca_produtos    lista_busca
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página