*** Settings ***
Library    SeleniumLibrary
Resource        ../Variables/Variables.robot
Resource        ../Keywords/Keywords.robot

*** Test Cases ***
TC01 Mover Caja A a B
    Abrir navegador drag and drop
    Drag And Drop    xpath=//div[@id="column-a"]    xpath=//div[@id="column-b"]
    Element Text Should Be    css=#column-a header    B
    Element Text Should Be    css=#column-b header    A
    Close Browser

TC02 Mover Caja B a A
    Abrir navegador drag and drop
    Drag And Drop    xpath=//div[@id="column-b"]    xpath=//div[@id="column-a"]
    Element Text Should Be    css=#column-a header    B
    Element Text Should Be    css=#column-b header    A
    Close Browser