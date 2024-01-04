*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/amazon_resources.robot


*** Keywords ***
Abrir o navegador
    Open Browser    browser=Firefox  
    Maximize Browser Window
    # ${options}    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver
    # Call Method    ${options}    add_argument    --headless
    # Call Method    ${options}    add_argument    --disable-infobars
    # Create Webdriver    Firefox    options=${options}
    # Maximize Browser Window
    # Go To    https://ibk.beta.bankeiro.com/

Fechar o navegador
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

Verificar o resultado da pesquisa, listando o produto pesquisado
    Element Text Should Be    locator=${RESULTADO_PESQUISA_PRODUTOS}    expected=Resultados