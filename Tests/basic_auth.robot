*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
Login Valid Credentials
    Abrir navegador con autenticacion basica    ${USER_BASIC_AUTH_VALIDO}    ${PASS_BASIC_AUTH_VALIDO}
    Wait Until Page Contains    Congratulations! You must have the proper credentials.

Login Invalid Credentials
    Abrir navegador con autenticacion basica    ${USER_BASIC_AUTH_INVALIDO}    ${PASS_BASIC_AUTH_INVALIDO}
    Page Should Not Contain    Congratulations! You must have the proper credentials.
