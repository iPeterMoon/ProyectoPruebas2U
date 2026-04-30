*** Settings ***
Library         SeleniumLibrary
Resource        ../Variables/Variables.robot
Resource        ../Keywords/Keywords.robot


*** Test Cases ***
TC01 Validar menu flotante
    Abrir navegador floating menu
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    1s

    Wait Until Element Is Visible    xpath=//div[@id='menu']//a[text()='Home']       timeout=5s
    Element Should Be Visible        xpath=//div[@id='menu']//a[text()='News']
    Element Should Be Visible        xpath=//div[@id='menu']//a[text()='Contact']
    Element Should Be Visible        xpath=//div[@id='menu']//a[text()='About']