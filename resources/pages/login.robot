*** Settings ***
Resource    ../main.robot


*** Variables ***
${CAMPO_LOGIN}    id:user-name
${CAMPO_SENHA}    id:password
${BOTAO_LOGIN}    id:login-button

*** Keywords ***
E Preencher o campo de login com USUARIO e SENHA
    Input Text    ${CAMPO_LOGIN}    standard_user
    Input Text    ${CAMPO_SENHA}    secret_sauce
Quando Clicar no botão de login
    Click Button    ${BOTAO_LOGIN}

Então o usuario deve estar logado
    Element Should Be Visible    class:product_label
    Sleep    3s