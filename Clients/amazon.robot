*** Settings ***
# Executar cenários de forma procedural
# Resource    ../TestsCases/amazon_tests_procedural.robot
# Executar cenários em Gherkin BDD
Resource            ../TestsCases/amazon_cart_gherkin.robot
Resource            ../TestsCases/amazon_home_gherkin.robot
Resource            ../TestsCases/amazon_search_gherkin.robot

# Abre Navegador antes de cada CT
Test Setup          Abrir o navegador
# Fecha Navegador antes de cada CT
Test Teardown       Fechar o navegador


*** Test Cases ***
CT01
    [Tags]    menus    categorias
    Caso de Teste 01 - Acesso ao menu "Ofertas do Dia"

CT02
    [Tags]    busca_produtos    lista_busca
    Caso de Teste 02 - Pesquisa de um Produto

CT03
    [Tags]    adicionar_carrinho
    Caso de Teste 03 - Adicionar Produto no Carrinho

CT04
    [Tags]    remover_carrinho
    Caso de Teste 04 - Remover Produto do Carrinho
