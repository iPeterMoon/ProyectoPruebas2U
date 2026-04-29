*** Settings ***
Library    SeleniumLibrary
Resource        ../Variables/Variables.robot
Resource        ../Keywords/Keywords.robot

*** Test Cases ***
Teclas presionadas
    Abrir navegador key presses
    Click Element    css=input[id="target"]
    Press Keys    None    ESC
    Wait Until Element Contains  css=p[id="result"]   You entered: ESCAPE
    Click Element    css=input[id="target"]
    Press Keys    None    SPACE
    Wait Until Element Contains  css=p[id="result"]   You entered: SPACE




