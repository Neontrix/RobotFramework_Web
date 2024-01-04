*** Settings ***
Resource         ../TestsCases/amazon_tests.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***   
CT 01 - Acesso ao menu "Ofertas do Dia"
    CT 01 - Acesso ao menu "Ofertas do Dia"