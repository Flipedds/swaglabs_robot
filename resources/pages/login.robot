*** Settings ***
Resource    ../main.robot

*** Variables ***
${URL}            https://www.saucedemo.com/v1/index.html
${BROWSER}        Chrome
${CAMPO_LOGIN}    id:user-name
${CAMPO_SENHA}    id:password
${BOTAO_LOGIN}    id:login-button

*** Keywords ***
Dado que eu acesse o Swag labs
    Open Browser    url=${URL}   browser=${BROWSER}
E Preencher o campo de login com USUARIO e SENHA
    Input Text    ${CAMPO_LOGIN}    standard_user
    Input Text    ${CAMPO_SENHA}    secret_sauce
Quando Clicar no botão de login
    Click Button    ${BOTAO_LOGIN}

Então o usuario deve estar logado
    Element Should Be Visible    class:product_label
    Sleep    3s