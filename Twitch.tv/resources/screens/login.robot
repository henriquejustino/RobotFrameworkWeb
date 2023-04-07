*** Settings ***
Documentation    Login

Resource    ../@main.robot

*** Variables ***

${HOME_TXT_ENTRAR_NA_TWITCH}        //h4[@class='CoreText-sc-1txzju1-0 ScTitleText-sc-d9mj2s-0 hhBVsV igzOaC tw-title']
${LOGIN_BTN_FECHAR}                 //button[contains(@aria-label,'Fechar janela restrita')]
${LOGIN_TXT_USUARIO}                //label[@class='ScFormLabel-sc-1p4hav0-0 hBpxuZ tw-form-label'][contains(.,'Usuário')]
${LOGIN_TXT_SENHA}                  //label[@class='ScFormLabel-sc-1p4hav0-0 hBpxuZ tw-form-label'][contains(.,'Senha')]
${LOGIN_INPUT_USUARIO}              //input[contains(@aria-label,'Insira seu nome de usuário')]
${LOGIN_INPUT_SENHA}                //input[contains(@aria-label,'Insira sua senha')]
${LOGIN_TXT_PROBLEMAS}              //p[@class='CoreText-sc-1txzju1-0 llpCRa'][contains(.,'Problemas para efetuar login?')]
${LOGIN_BTN_MOSTRAR_SENHA}          //button[contains(@aria-label,'Alternar visibilidade de senha')]
${LOGIN_BTN_CADASTRAR_CONTA}        //div[@data-a-target='tw-core-button-label-text'][contains(.,'Ainda não possui uma conta? Cadastrar-se')]
${LOGIN_BTN_ENTRAR}                 //button[@class='ScCoreButton-sc-ocjdkq-0 ScCoreButtonPrimary-sc-ocjdkq-1 eNRGWV fdIvIW'][contains(.,'Entrar')]



*** Keywords ***
Verificar o título da pagina Entrar contendo o texto "${titulo}"
    [Documentation]    Verificar todos os elementos da pagina Entrar contendo o texto conforme informado
    Wait Until Page Contains    text=${titulo}
    Wait Until Element Is Visible    locator=${HOME_TXT_ENTRAR_NA_TWITCH}

Verificar todos os elementos da tela de Login
    [Documentation]    Verificar todos os elementos da tela de Login
    Wait Until Element Is Visible    locator=${LOGIN_BTN_FECHAR}
    Wait Until Element Is Visible    locator=${LOGIN_TXT_USUARIO}
    Wait Until Element Is Visible    locator=${LOGIN_TXT_SENHA}
    Wait Until Element Is Visible    locator=${LOGIN_INPUT_USUARIO}
    Wait Until Element Is Visible    locator=${LOGIN_INPUT_SENHA}
    Wait Until Element Is Visible    locator=${LOGIN_TXT_PROBLEMAS}
    Wait Until Element Is Visible    locator=${LOGIN_BTN_MOSTRAR_SENHA}
    Wait Until Element Is Visible    locator=${LOGIN_BTN_CADASTRAR_CONTA}
    Wait Until Element Is Visible    locator=${LOGIN_BTN_ENTRAR}