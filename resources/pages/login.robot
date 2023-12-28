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

E Preencher corretamente o campo de login com USUARIO e SENHA
    Input Text    ${CAMPO_LOGIN}    standard_user
    Input Text    ${CAMPO_SENHA}    secret_sauce
    Capture Page Screenshot    evidencias/login/fill.png

Quando Clicar no botão de login
    Click Button    ${BOTAO_LOGIN}

Então o usuario deve estar logado
    Element Should Be Visible    class:product_label
    Capture Page Screenshot    evidencias/login/logged.png
    Sleep    3s

E Preencher incorretamente o campo de login com USUARIO e SENHA
    Input Text    ${CAMPO_LOGIN}    user
    Input Text    ${CAMPO_SENHA}    secret_sauce

Entao devo visualizar mensagem de erro
    Element Should Be Visible    //*[@id="login_button_container"]/div/form/h3
