*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${App-Url}    http://localhost:8083/Todos/todos
${Browser}    Safari

*** Test Cases ***
Add New Todo
    Open Browser To Todos Page
    Type New Todo Name    CreateTest
    Submit Form
    Validate State
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Todos Page
    Open Browser    ${App-Url}    ${Browser}
    Title Should Be    Todos
    
Type New Todo Name
    [Arguments]    ${name}
    Input Text    id=task    ${name}

Submit Form
    Press Keys    id=task    RETURN

Validate State
    Element Should Contain    id=todo-2    CreateTest
