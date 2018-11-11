*** Settings ***
Library    SeleniumLibrary
Variables	../../Objects/Eshop/Eshop_Objects.py

*** Variables ***
${url}	http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation
${browser}	chrome

*** Keywords ***
Open Eshop Registration Form
    [Arguments]    ${email}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    ${Input_email_create}    ${email}
    Click Button    ${Button_open_sign_in_form}
    Wait Until Page Contains Element    ${Button_register}
    
Fill In Registration Form
    [Arguments]    &{test_data}
    Input Text    ${Input_firstname}    ${test_data['firstname']}
    Input Text    ${Input_lastname}    ${test_data['lastname']}
    Input Text    ${Input_password}    ${test_data['password']}
    Input Text    ${Input_address1}    ${test_data['address']}
    Input Text    ${Input_city}    ${test_data['city']}
    Select From List By Label    ${Select_country}    ${test_data['country']}
    Input Text    ${Input_postcode}    ${test_data['postcode']}
    Input Text    ${Input_phone}   ${test_data['phone']}
    Input Text    ${Input_mobile_phone}   ${test_data['phone_mobile']}
    
Capture Screenshot And Close Browser
    Capture Page Screenshot    
    Close Browser