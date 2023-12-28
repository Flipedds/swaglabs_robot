*** Settings ***
Resource    ../resources/main.robot
Resource    ../resources/pages/products.robot
Test Setup    Dado que eu esteja logado
Test Teardown    Fechar navegador


*** Test Cases ***
Produto adicionado ao carrinho com sucesso
    E clicar no botão Adicionar ao Carrinho de um produto
    Quando clicar no Carrinho
    Entao o produto deverá ser adicionado ao Carrinho