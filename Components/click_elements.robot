*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Clicar no elemento
    [Arguments]    ${ELEMENT}
    Wait Until Element Is Visible
    ...    ${ELEMENT}
    ...    error=Elemento ${ELEMENT} não foi encontrado durante a execução do caso de teste: ${TEST_NAME}
    Click Element    ${ELEMENT}