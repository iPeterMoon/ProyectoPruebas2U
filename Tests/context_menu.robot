*** Settings ***
Library    SeleniumLibrary
Resource        ../Variables/Variables.robot
Resource        ../Keywords/Keywords.robot

*** Test Cases ***
TC01 Validar alerta de context menu
    Abrir navegador context menu
    Wait Until Element Is Visible    css=#hot-spot
    Open Context Menu    css=#hot-spot
    ${texto_alerta}=    Handle Alert    LEAVE
    Should Be Equal As Strings    ${texto_alerta}    ${TEXTO_ALERTA_CONTEXT_MENU}
    Aceptar alerta
    Validar que no exista una alerta
    Close Browser
