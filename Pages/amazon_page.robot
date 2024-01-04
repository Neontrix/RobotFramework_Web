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

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Ofertas do Dia"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "Ofertas e Promoções"
    Wait Until Page Contains    text=${TEXTO_HEADER_ELETRONICOS}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}