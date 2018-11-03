*** Settings ***
Test Setup    Log    Setup        
Test Teardown    Log    Teardown    
Library    SeleniumLibrary
Library    Dialogs

*** Variables ***
${expected_value}    Expected Value

*** Test Cases ***
Input Value
    Input Value From User

*** Keywords ***
Input Value From User
    ${user_value}=   Get Value From User    Input your value    Type...
    Should Be Equal As Strings    ${user_value}    ${expected_value}      
    

    