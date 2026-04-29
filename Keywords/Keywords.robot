*** Settings ***
Library    SeleniumLibrary
Resource        ../Variables/Variables.robot

*** Keywords ***
Abrir navegador login
    Open Browser    ${URL_LOGIN}    ${BROWSER}   options=add_argument('--incognito')

Abrir navegador key presses
    Open Browser    ${URL_KEY_PRESSES}    ${BROWSER}   options=add_argument('--incognito')
