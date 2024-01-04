*** Settings ***
Documentation  Essa suíte testa o site da Amazon.com.br
Resource       ../Pages/amazon_page.robot
# Test Setup     Abrir o navegador
# Test Teardown  Fechar o navegador
# Teste

*** Keywords ***
CT 01 - Acesso ao menu "Ofertas do Dia"
    [Documentation]  Este teste verifica o menu eletrônicos do site da Amazon.com.br
    ...              e verifica a categoria computadores e informática
    [Tags]           menus  categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Ofertas do Dia"
    Verificar se aparece a frase "Ofertas e Promoções"
#     Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
#     Verificar se aparece a categoria "Computadores e Informática"

# Caso de Teste 02 - Pesquisa de um Produto
#     [Documentation]  Este teste verifica a busca de um produto
#     [Tags]           busca_produtos  lista_busca
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa, listando o produto pesquisado