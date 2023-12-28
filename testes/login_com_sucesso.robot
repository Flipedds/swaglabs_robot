*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que eu acesse o Swag labs
Test Teardown    Fechar navegador

*** Test Cases ***
Efetuando login com sucesso no swag labs
    E Preencher corretamente o campo de login com USUARIO e SENHA
    Quando Clicar no botão de login
    Então o usuario deve estar logado