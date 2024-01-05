*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Inserir texto
    [Arguments]    ${FIELD}    ${TEXT}
    Wait Until Element Is Visible
    ...    ${FIELD}
    ...    error=Elemento ${FIELD} não foi encontrado durante a execução do caso de teste: ${TEST_NAME}
    Input Text    ${FIELD}    ${TEXT}
