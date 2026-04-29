*** Settings ***
Library    SeleniumLibrary
Resource        ../Variables/Variables.robot
Resource        ../Keywords/Keywords.robot

*** Test Cases ***
TC01 Login exitoso y logout
    Abrir navegador login
    Ingresar credenciales    ${USUARIO_CORRECTO}    ${CONTRASEÑA_CORRECTA}
    Click Element    xpath=//i[contains(text(),"Login")]
    Wait Until Page Contains    You logged into a secure area!
    Click Element    xpath=//i[contains(text(),"Logout")]
    Wait Until Page Contains    Login Page
    Close Browser

TC02 Login fallido usuario invalido
    Abrir navegador login
    Ingresar credenciales   ${USUARIO_INCORRECTO}    ${CONTRASEÑA_CORRECTA}
    Click Element    xpath=//i[contains(text(),"Login")]
    Wait Until Page Contains    Your username is invalid!
    Close Browser

TC03 Login fallido contraseña invalida
    Abrir navegador login
    Ingresar credenciales    ${USUARIO_CORRECTO}    ${CONTRASEÑA_INCORRECTA}
    Click Element    xpath=//i[contains(text(),"Login")]
    Wait Until Page Contains    Your password is invalid!
    Close Browser



