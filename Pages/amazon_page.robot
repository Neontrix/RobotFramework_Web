*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/amazon_resources.robot
Resource    ../Components/amazon_cart.robot

*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}  
    Maximize Browser Window
    # ${options}    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver
    # Call Method    ${options}    add_argument    --headless
    # Call Method    ${options}    add_argument    --disable-infobars
    # Create Webdriver    Firefox    options=${options}
    # Maximize Browser Window
    # Go To    https://ibk.beta.bankeiro.com/

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site "${URL_AMAZON}"
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Ofertas do Dia"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Digitar o nome de produto "${NOME_PRODUTO}" no campo de pesquisa
    Input Text    locator=${CAMPO_PESQUISA_PRODUTOS}    text=${NOME_PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=${BOTAO_PESQUISA_PRODUTOS}

Verificar o resultado da pesquisa, listando o produto "${PRODUTO}"
    Element Text Should Be    locator=${RESULTADO_PESQUISA_PRODUTOS}    expected=Resultados
    Wait Until Element Is Visible    locator=${NOME_PRODUTO}


#GHERKIN STEPS
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site "Amazon.com.br"
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Ofertas do Dia"

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Ofertas e Promoções"

E verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"
    Verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa

Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Verificar se o título da página fica "Amazon.com.br : Xbox Series S"

E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa, listando o produto "Console Xbox Series S"

Quando adicionar o produto "Console Xbox Series S" no carrinho
    Adicionar produto no carrinho

Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
    Element Text Should Be    locator=${ADICIONADO_CARRINHO}    expected=Adicionado ao carrinho