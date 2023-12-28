*** Settings ***
Resource    ../main.robot

*** Variables ***
${BOTAO_PRODUTO}    //*[@id="inventory_container"]/div/div[1]/div[3]/button
${BOTAO_CARRINHO}    //*[@id="shopping_cart_container"]/a
${PRODUTO}    //*[@id="item_4_title_link"]/div


*** Keywords ***
E clicar no botão Adicionar ao Carrinho de um produto
    Click Button    ${BOTAO_PRODUTO}

Quando clicar no Carrinho
    Click Element  ${BOTAO_CARRINHO}

Entao o produto deverá ser adicionado ao Carrinho
    Element Should Be Visible    ${PRODUTO}
    Element Should Contain    ${PRODUTO}    Sauce Labs Backpack
