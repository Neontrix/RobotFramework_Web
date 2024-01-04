*** Settings ***
Resource         ../TestsCases/amazon_tests.robot
# Abre Navegador antes de cada CT
Test Setup       Abrir o navegador 
# Fecha Navegador antes de cada CT
Test Teardown    Fechar o navegador

*** Test Cases ***   
CT01
    Caso de Teste 01 - Acesso ao menu "Ofertas do Dia"

CT02
    Caso de Teste 02 - Pesquisa de um Produto