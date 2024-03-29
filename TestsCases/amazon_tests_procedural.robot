*** Settings ***
Documentation       Essa suíte testa o site da Amazon.com.br

Resource            ../Pages/amazon_search.robot


*** Keywords ***
Caso de Teste 01 - Acesso ao menu "Ofertas do Dia"
    [Documentation]    Este teste verifica o menu eletrônicos do site da Amazon.com.br
    ...    e verifica a categoria computadores e informática
    [Tags]    menus    categorias
    Acessar a home page do site "Amazon.com.br"
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Ofertas do Dia"
    Verificar se aparece a frase "Ofertas e Promoções"
    Verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Este teste verifica a busca de um produto
    [Tags]    busca_produtos    lista_busca
    Acessar a home page do site "Amazon.com.br"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, listando o produto "Console Xbox Series S"
