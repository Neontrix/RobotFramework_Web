*** Settings ***
Library     SeleniumLibrary
Resource    ../Pages/amazon_page.robot

*** Keywords ***
Adicionar produto no carrinho
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Click Element    locator=${NOME_PRODUTO}
    Click Button    locator=${ADICIONAR_CARRINHO}