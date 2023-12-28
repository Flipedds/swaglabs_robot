*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que eu acesse o Swag labs
Test Teardown    Fechar navegador

*** Test Cases ***
Efetuando login com sucesso no swag labs
    [Tags]    login
    E Preencher corretamente o campo de login com USUARIO e SENHA
    Quando Clicar no botão de login
    Então o usuario deve estar logado

Sistema apresenta mensagem de erro ao inserir login e senha incorretos
    [Tags]    login
    E Preencher incorretamente o campo de login com USUARIO e SENHA
    Quando Clicar no botão de login
    Entao devo visualizar mensagem de erro