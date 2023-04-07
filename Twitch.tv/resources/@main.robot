*** Settings ***
Library     SeleniumLibrary
Library     DatabaseLibrary
Library     DateTime
Library     RequestsLibrary
Library     String
Library     XML
Library     FakerLibrary    locale=pt_BR

### Data ###
Resource    ./data/config.resource

### Shared ###
Resource    ./shared/@main_keywords.robot

### Screens ###
Resource    ./screens/pagina_principal.robot
Resource    ./screens/login.robot
