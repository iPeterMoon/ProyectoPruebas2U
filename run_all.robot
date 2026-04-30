*** Settings ***
Library    Process

*** Variables ***
${PYTHON_VENV}    ${CURDIR}/.venv/bin/python
${TESTS_DIR}      ${CURDIR}/Tests
${RESULTS_DIR}    ${CURDIR}/Results

*** Test Cases ***
Ejecutar todos los tests
    ${resultado}=    Run Process
    ...    ${PYTHON_VENV}
    ...    -m
    ...    robot
    ...    --outputdir
    ...    ${RESULTS_DIR}
    ...    ${TESTS_DIR}
    ...    stderr=STDOUT
    Should Be Equal As Integers    ${resultado.rc}    0
   
