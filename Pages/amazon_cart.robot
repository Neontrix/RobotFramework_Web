*** Settings ***
Library     SeleniumLibrary
Resource    ../Pages/search_product.robot

*** Keywords ***
Adicionar produto no carrinho
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Click Element    locator=${NOME_PRODUTO}
    Click Button    locator=${ADICIONAR_CARRINHO}

# GHERKIN STEPS
Quando adicionar o produto "Console Xbox Series S" no carrinho
    Adicionar produto no carrinho

Então o produto "Console Xbox Series S" deve ser mostrado no carrinho  
   Element Text Should Be    locator=${ADICIONADO_CARRINHO}    expected=Adicionado ao carrinho