*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Valida texto
    [Arguments]    ${FIELD}    ${TEXT}
    Element Text Should Be
    ...    ${FIELD}
    ...    ${TEXT}
    ...    error=O elemento ${FIELD} do texto ${TEXT} não foi encontrado durante a execução do caso de teste: ${TEST_NAME}
