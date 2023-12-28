*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que eu acesse o Swag labs


*** Test Cases ***
Sistema apresenta mensagem de erro ao inserir login e senha incorretos
    E Preencher incorretamente o campo de login com USUARIO e SENHA
    Quando Clicar no botão de login
    Entao devo visualizar mensagem de erro