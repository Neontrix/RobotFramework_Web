*** Settings ***
Library     SeleniumLibrary
Resource    ./amazon_cart.robot
Resource    ./amazon_page.robot
Resource    ../Resources/amazon_resources.robot
Resource    ../Components/input_texts.robot
Resource    ../Components/click_elements.robot


*** Keywords ***
Digitar o nome de produto "${NOME_PRODUTO}" no campo de pesquisa
    Inserir texto    ${CAMPO_PESQUISA_PRODUTOS}    ${NOME_PRODUTO}

Clicar no botão de pesquisa
    Clicar no elemento    ${BOTAO_PESQUISA_PRODUTOS}

Verificar o resultado da pesquisa, listando o produto "${PRODUTO}"
    Valida texto    ${RESULTADO_PESQUISA_PRODUTOS}    expected=Resultados
    Wait Until Element Is Visible    locator=${NOME_PRODUTO}


# Gherkin Steps
Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa

Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Verificar se o título da página fica "Amazon.com.br : Xbox Series S"

E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa, listando o produto "Console Xbox Series S"
