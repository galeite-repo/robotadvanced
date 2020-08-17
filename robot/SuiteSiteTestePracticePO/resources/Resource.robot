*** Settings ***
Library    SeleniumLibrary
Library    String


*** Variable ***
${BROWSER}    chrome
${URL}        http://automationpractice.com


*** Keywords ***

Abrir navegador
    Open Browser    about:blank    ${BROWSER}

Fechar navegador
    # Capture Page Screenshot
    Close Browser