*** Variables ***
${BROWSER}                            firefox
${URL}                                http://www.amazon.com.br
${MENU_ELETRONICOS}                   //a[@href='/deals?ref_=nav_cs_gb' and contains(text(), 'Ofertas do Dia')]
${HEADER_ELETRONICOS}                 //h1[@class='a-size-extra-large a-spacing-micro a-text-bold' and contains (text(), "Ofertas e Promoções")]
${CAMPO_PESQUISA_PRODUTOS}            //input[@id='twotabsearchtextbox']
${BOTAO_PESQUISA_PRODUTOS}            //input[@id="nav-search-submit-button"]
${RESULTADO_PESQUISA_PRODUTOS}        //span[@class="a-size-medium-plus a-color-base a-text-bold" and contains(text(), 'Resultados')]
${NOME_PRODUTO}                       //span[@class='a-size-base-plus a-color-base a-text-normal' and contains(text(), 'Console Xbox Series S')]
${ADICIONAR_CARRINHO}                 //input[@id='add-to-cart-button']
${ADICIONADO_CARRINHO}                //span[@class='a-size-medium-plus a-color-base sw-atc-text a-text-bold' and contains(text(), "Adicionado ao carrinho")]