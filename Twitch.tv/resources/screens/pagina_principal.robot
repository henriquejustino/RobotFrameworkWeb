*** Settings ***
Documentation       Pagina Inicial

Resource            ../@main.robot


*** Variables ***
#HomePage
${HOME_BTN_PROCURAR}            //a[@aria-label='Procurar'][contains(.,'ProcurarProcurarProcurar')]
${HOME_BTN_ENTRAR}              //button[@class='ScCoreButton-sc-ocjdkq-0 ScCoreButtonSecondary-sc-ocjdkq-2 ibtYyW bTKXKk'][contains(.,'Entrar')]
${HOME_BTN_CADASTRAR}           //button[@class='ScCoreButton-sc-ocjdkq-0 ScCoreButtonPrimary-sc-ocjdkq-1 ibtYyW wgheP'][contains(.,'Cadastrar-se')]
${HOME_INPUT_BUSCAR}            //input[contains(@aria-label,'Barra de busca')]
${HOME_TXT_CANAIS_AOVIVO}       //a[@class='ScCoreLink-sc-16kq0mq-0 jSrrlW tw-link'][contains(.,'Canais ao vivo')]
${HOME_TXT_JUNTESE}             //h4[@class='CoreText-sc-1txzju1-0 ScTitleText-sc-d9mj2s-0 hhBVsV igzOaC tw-title'][contains(.,'Junte-se hoje à Twitch')]
${HOME_TXT_PROCURAR}            //h1[@class='CoreText-sc-1txzju1-0 ScTitleText-sc-d9mj2s-0 dDMxrZ igzOaC tw-title'][contains(.,'Procurar')]
${HOME_BTN_LOOTPRIME}           //button[contains(@aria-label,'Prime oferece')]
${HOME_TXT_RESGATE_PRIME}       //h4[@class='CoreText-sc-1txzju1-0'][contains(.,'Resgate com o Prime Gaming')]
${HOME_BTN_MAIS}                //button[@aria-label='Mais']

${HOME_TXT_MAIS-GREAL}          //p[contains(.,'Geral')]


*** Keywords ***
Verificar todos os elementos da Home Page
    [Documentation]    Verificar todos os elementos da Home Page
    Wait Until Element Is Visible    locator=${HOME_BTN_PROCURAR}
    Wait Until Element Is Visible    locator=${HOME_BTN_ENTRAR}
    Wait Until Element Is Visible    locator=${HOME_BTN_CADASTRAR}
    Wait Until Element Is Visible    locator=${HOME_INPUT_BUSCAR}
    Wait Until Page Contains    text=Canais ao vivo

Verificar todos os elementos da pagina Entrar contendo o texto "${titulo}"
    [Documentation]    Verificar todos os elementos da pagina Entrar contendo o texto conforme informado
    Wait Until Page Contains    text=${titulo}
    Wait Until Element Is Visible    locator=${HOME_TXT_ENTRAR_NA_TWITCH}

Verificar o título da pagina 'Cadastre-se' contendo o texto "${titulo}"
    [Documentation]    Verificar o título da pagina 'Cadastre-se' contento o texto informado
    Wait Until Page Contains    text=${titulo}
    Wait Until Element Is Visible    locator=${HOME_TXT_JUNTESE}

Verificar o título da pagina 'Procurar' contendo o texto "${titulo}"
    [Documentation]    Verificar o título da pagina 'Procurar' contendo o texto informado
    Wait Until Page Contains    text=${titulo}
    Wait Until Element Is Visible    locator=${HOME_TXT_PROCURAR}

Verificar o título da pagina 'Loot Prime' contendo o texto "${titulo}"
    [Documentation]    Verificar o título da pagina 'Loot Prime' contendo o texto informado
    Wait Until Page Contains    text=${titulo}
    Wait Until Element Is Visible    locator=${HOME_TXT_RESGATE_PRIME}

Verificar que a pagina de 'Mais' com o titulo "${titulo}"
    [Documentation]    Verificar que a pagina de 'Mais'
    Wait Until Page Contains    text=${titulo}
    Wait Until Element Is Visible    locator=${HOME_TXT_MAIS-GREAL}

Clicar no botão 'Entrar'
    [Documentation]    Clicar no botão 'Entrar'
    Wait Until Element Is Visible    locator=${HOME_BTN_ENTRAR}
    Click Element    locator=${HOME_BTN_ENTRAR}

Clicar no botão 'Cadastre-se'
    [Documentation]    Clicar no botão 'Cadastre-se'
    Wait Until Element Is Visible    locator=${HOME_BTN_CADASTRAR}
    Click Element    locator=${HOME_BTN_CADASTRAR}

Clicar no botão 'Procurar'
    [Documentation]    Clicar no botão 'Procurar'
    Wait Until Element Is Visible    locator=${HOME_BTN_PROCURAR}
    Click Element    locator=${HOME_BTN_PROCURAR}

Clicar no botão 'Loot Prime'
    [Documentation]    Clicar no botão 'Loot Prime'
    Wait Until Element Is Visible    locator=${HOME_BTN_LOOTPRIME}
    Click Element    locator=${HOME_BTN_LOOTPRIME}

Clicar no botão 'Mais'
    [Documentation]    Clicar no botão 'Mais' (...)
    Wait Until Element Is Visible    locator=${HOME_BTN_MAIS}
    Click Element    locator=${HOME_BTN_MAIS}

