*** Settings ***
Documentation       Pagina Inicial

Resource            ../resources/@main.robot

Test Setup          Abrir o navegador
Test Teardown       Fechar o navegador


*** Test Cases ***
Home-CT-01 - Acessar a pagina Home da twitch.tv
    [Documentation]    Abrir e fechar o navegador
    [Tags]    pagina_inicial
    Acessar a home page da twitch.tv

Home-CT-02 - Acessar a pagina Home e verificar os principais elementos
    [Documentation]    Acessar a pagina Home e verificar os principais elementos
    [Tags]    pagina_inicial
    Acessar a home page da twitch.tv
    Verificar todos os elementos da Home Page

Home-CT-03 - Acessar a pagina 'Entrar'
    [Documentation]    Acessar a pagina de Login
    [Tags]    pagina_inicial    login
    Acessar a home page da twitch.tv
    Verificar todos os elementos da Home Page
    Clicar no botão 'Entrar'
    Verificar o título da pagina Entrar contendo o texto "Entrar na Twitch"

Home-CT-04 - Acessar a pagina 'Cadastre-se'
    [Documentation]    Acessar a pagina 'Cadastre-se'
    [Tags]    pagina_inicial
    Acessar a home page da twitch.tv
    Verificar todos os elementos da Home Page
    Clicar no botão 'Cadastre-se'
    Verificar o título da pagina 'Cadastre-se' contendo o texto "Junte-se hoje à Twitch"

Home-CT-05 - Acessar a pagina 'Procurar'
    [Documentation]    Acessar a pagina 'Procurar'
    [Tags]    pagina_inicial
    Acessar a home page da twitch.tv
    Verificar todos os elementos da Home Page
    Clicar no botão 'Procurar'
    Verificar o título da pagina 'Procurar' contendo o texto "Procurar"

Home-CT-06 - Acessar o Loot Prime
    [Documentation]    Acessar o Loot Prime
    [Tags]    pagina_inicial
    Acessar a home page da twitch.tv
    Verificar todos os elementos da Home Page
    Clicar no botão 'Loot Prime'
    Verificar o título da pagina 'Loot Prime' contendo o texto "Resgate com o Prime Gaming"

Home-CT-07 - Acessar a pagina de Mais
    [Documentation]    Acessar a pagina de Mais
    [Tags]    pagina_inicial
    Acessar a home page da twitch.tv
    Verificar todos os elementos da Home Page
    Clicar no botão 'Mais'
    Verificar que a pagina de 'Mais' com o titulo "Geral"

