*** Settings ***
Library    SeleniumLibrary
Resource        ../Variables/Variables.robot
Resource        ../Keywords/Keywords.robot

*** Test Cases ***
TC01 Aparecer Boton Gallery
    Abrir navegador disappearing elements
    Wait Until Keyword Succeeds    30s    2s    Recargar Hasta Boton Visible  xpath=//a[text()='Gallery']
    Element Should Be Visible    xpath=//a[text()='Gallery']
    Close Browser

TC02 Desaparecer Boton Gallery
    Abrir navegador disappearing elements
    Wait Until Keyword Succeeds    30s    2s    Recargar Hasta Boton No Visible    xpath=//a[text()='Gallery']
    Page Should Not Contain Element    xpath=//a[text()='Gallery']
    Close Browser