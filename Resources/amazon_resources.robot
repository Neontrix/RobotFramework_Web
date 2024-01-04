*** Variables ***
${URL}                                http://www.amazon.com.br
${MENU_ELETRONICOS}                   //a[@href='/deals?ref_=nav_cs_gb' and contains(text(), 'Ofertas do Dia')]
${HEADER_ELETRONICOS}                 //h1[@class='a-size-extra-large a-spacing-micro a-text-bold' and contains (text(), "Ofertas e Promoções")]
${CAMPO_PESQUISA_PRODUTOS}            //input[@id='twotabsearchtextbox']
${BOTAO_PESQUISA_PRODUTOS}            //input[@id="nav-search-submit-button"]
${RESULTADO_PESQUISA_PRODUTOS}        //span[@class="a-size-medium-plus a-color-base a-text-bold" and contains(text(), 'Resultados')]