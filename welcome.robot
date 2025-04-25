*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${App-Url}    http://localhost:8083
${Browser}    Safari

*** Test Cases ***
Access Welcome Page
    Open Browser To Welcome Page
    Validate State
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Welcome Page
    Open Browser    ${App-Url}    ${Browser}

Validate State
    Title Should Be    Welcome

