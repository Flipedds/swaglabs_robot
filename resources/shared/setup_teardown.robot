*** Settings ***
Resource    ../main.robot

*** Keywords ***

Fechar navegador
    Close Browser

Dado que eu esteja logado
    Dado que eu acesse o Swag labs
    E Preencher corretamente o campo de login com USUARIO e SENHA
    Quando Clicar no botão de login