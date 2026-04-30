*** Settings ***
Library         SeleniumLibrary
Resource        ../Variables/Variables.robot
Resource        ../Keywords/Keywords.robot

*** Test Cases ***
TC01 Validar controles dinamicos
    Abrir navegador dynamic controls

    Click Button    xpath=//form[@id='checkbox-example']/button

    Wait Until Element Is Not Visible    id=checkbox    timeout=15s
    Page Should Not Contain Element      id=checkbox

    Click Button   xpath=//form[@id='input-example']/button

    Wait Until Element Is Enabled        xpath=//form[@id='input-example']/input    timeout=15s
    Element Should Be Enabled            xpath=//form[@id='input-example']/input