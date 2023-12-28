*** Settings ***
Resource    ../main.robot

*** Variables ***
${URL}                    https://www.saucedemo.com/v1/index.html
${BROWSER}                Chrome

*** Keywords ***
Dado que eu acesse o Swag labs
    Open Browser    url=${URL}   browser=${BROWSER}

Fechar navegador
    Close Browser