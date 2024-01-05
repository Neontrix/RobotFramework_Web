*** Settings ***
Library     SeleniumLibrary
Resource    ../Pages/search_product.robot
Resource    ../Components/text_validator.robot


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
    Valida texto    ${ADICIONADO_CARRINHO}    Adicionado ao carrinho

E existe o produto "Console Xbox Series S" no carrinho
    Adicionar produto no carrinho
    Valida texto    ${ADICIONADO_CARRINHO}    Adicionado ao carrinho

Quando remover o produto "Console Xbox Series S" do carrinho
    Clicar no elemento    ${EXLUIR_PRODUTO_CARRINHO}

Então o carrinho deve ficar vazio
    Wait Until Element Is Visible    //a[@class='a-link-normal sc-product-link']