*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Keywords.robot

*** Test Cases ***
Add and Remove Elements
    Open Page and Verify
    Add 20 Elements
    Remove Elements and Verify
