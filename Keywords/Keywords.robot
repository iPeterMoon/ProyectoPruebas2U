*** Settings ***
Library    SeleniumLibrary
Resource        ../Variables/Variables.robot

*** Keywords ***
Abrir navegador login
    Open Browser    ${URL_LOGIN}    ${BROWSER}   options=add_argument('--incognito')

Abrir navegador key presses
    Open Browser    ${URL_KEY_PRESSES}    ${BROWSER}   options=add_argument('--incognito')

Abrir navegador checkboxes
    Open Browser    ${URL_CHECKBOXES}    ${BROWSER}   options=add_argument('--incognito')

Abrir navegador context menu
    Open Browser    ${URL_CONTEXT_MENU}    ${BROWSER}   options=add_argument('--incognito')

Ingresar credenciales
    [Arguments]     ${usuario}      ${contraseña}
    Input Text    css=input[name="username"]    ${usuario}
    Input Text    css=input[name="password"]    ${contraseña}

Aceptar alerta
    Handle Alert    ACCEPT

Validar que no exista una alerta
    Alert Should Not Be Present
