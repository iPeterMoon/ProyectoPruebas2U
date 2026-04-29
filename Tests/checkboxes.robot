*** Settings ***
Library    SeleniumLibrary
Resource        ../Variables/Variables.robot
Resource        ../Keywords/Keywords.robot

*** Test Cases ***
Seleccionar checkboxes
    Abrir navegador checkboxes
    Wait Until Element Is Visible    xpath=(//form[@id="checkboxes"]/input)[1]
    Select Checkbox    xpath=(//form[@id="checkboxes"]/input)[1]
    Checkbox Should Be Selected    xpath=(//form[@id="checkboxes"]/input)[1]
    Select Checkbox    xpath=(//form[@id="checkboxes"]/input)[2]
    Checkbox Should Be Selected    xpath=(//form[@id="checkboxes"]/input)[2]
