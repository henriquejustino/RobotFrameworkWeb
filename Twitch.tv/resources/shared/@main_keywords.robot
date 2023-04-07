*** Settings ***
Resource    ../@main.robot


*** Variables ***


*** Keywords ***
Abrir o navegador
    [Documentation]    Abre o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    [Documentation]    Fechar o navegador
    Close Browser

Acessar a home page da twitch.tv
    [Documentation]    Acessar a home page da twitch.tv
    Go To    url=${URL}
    Wait Until Element Is Visible    ${HOME_BTN_PROCURAR}    ${TENTATIVA_PADRAO}
