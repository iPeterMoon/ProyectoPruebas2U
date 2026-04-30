*** Settings ***
Library    SeleniumLibrary
Resource        ../Variables/Variables.robot

*** Keywords ***
Abrir navegador login
    Open Browser    ${URL_LOGIN}    ${BROWSER}   options=add_argument('--incognito')

Abrir navegador key presses
    Open Browser    ${URL_KEY_PRESSES}    ${BROWSER}   options=add_argument('--incognito')

Abrir navegador checkboxes
    Open Browser    ${URL_CHECKBOXES}    ${BROWSER}   options=add_argument('--incognito')

Abrir navegador context menu
    Open Browser    ${URL_CONTEXT_MENU}    ${BROWSER}   options=add_argument('--incognito')

Abrir navegador disappearing elements
    Open Browser    ${URL_DISAPPEARING_ELEMENTS}    ${BROWSER}   options=add_argument('--incognito')

Abrir navegador drag and drop
    Open Browser    ${URL_DRAG_AND_DROP}    ${BROWSER}    options=add_argument('--incognito')

Abrir navegador add remove elements
    Open Browser    ${URL_ADD_REMOVE_ELEMENTS}    ${BROWSER}    options=add_argument('--incognito')

Abrir navegador con autenticacion basica
    [Arguments]    ${username}    ${password}
    ${auth_url}=    Set Variable    https://${username}:${password}@${URL_BASIC_AUTH.replace("https://", "")}
    Open Browser    ${auth_url}     ${BROWSER}   options=add_argument('--incognito')

Ingresar credenciales
    [Arguments]     ${usuario}      ${contraseña}
    Input Text    css=input[name="username"]    ${usuario}
    Input Text    css=input[name="password"]    ${contraseña}

Aceptar alerta
    Handle Alert    ACCEPT

Validar que no exista una alerta
    Alert Should Not Be Present

Recargar Hasta Boton Visible
    [Arguments]    ${boton}
    Reload Page
    Page Should Contain Element    ${boton}

Recargar Hasta Boton No Visible
    [Arguments]    ${boton}
    Reload Page
    Page Should Not Contain Element    ${boton}


Abrir navegador dynamic controls
    Open Browser    ${URL_DYNAMIC_CONTROLS}    ${BROWSER}   options=add_argument('--incognito')
    Maximize Browser Window


Abrir navegador floating menu
    Open Browser    ${URL_FLOATING_MENU}    ${BROWSER}   options=add_argument('--incognito')

Open Page and Verify
    Abrir navegador add remove elements
    Maximize Browser Window
    Wait Until Page Contains    Add/Remove Elements

Add 20 Elements
    FOR    ${i}    IN RANGE    1    21
        Click Button    xpath=//button[text()='Add Element']
        Wait Until Page Contains Element    xpath=(//button[text()='Delete'])[${i}]
    END

Remove Elements and Verify
    FOR    ${i}    IN RANGE    20    0    -1
        Click Button    xpath=(//button[text()='Delete'])[last()]
        Page Should Not Contain Element    xpath=(//button[text()='Delete'])[${i}]
    END