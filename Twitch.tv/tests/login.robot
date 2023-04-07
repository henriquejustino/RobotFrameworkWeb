*** Settings ***
Documentation       Pagina Inicial

Resource            ../resources/@main.robot

Test Setup          Abrir o navegador
Test Teardown       Fechar o navegador


*** Test Cases ***
Login-CT-01 - Acessar a pagina de Login e verificar todos os elementos
    [Documentation]    Acessar a pagina de Login e verificar todos os elementos
    [Tags]    pagina_inicial    login
    Acessar a home page da twitch.tv
    Verificar todos os elementos da Home Page
    Clicar no botão 'Entrar'
    Verificar o título da pagina Entrar contendo o texto "Entrar na Twitch"
    Verificar todos os elementos da tela de Login