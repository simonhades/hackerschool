*** Settings ***
Library    SeleniumLibrary
Variables    ../../../Objects/Automation_Practice/Automation_Practice.py
Test Setup    Open Browser    ${url}    ${browser}
Test Teardown    Close Browser

*** Variables ***
${browser}    browser
${url}    http://automationpractice.com/index.php

*** Test Cases ***
Register To Eshop
    Click Link    ${link_login}
    Wait Until Page Contains Element    ${auth_tbox_email}    
    Input Text    ${auth_tbox_email}    hello@trtrr.tr
    Click Button    ${btn_create_account}
    Wait Until Page Contains Element    ${sup_radio_mrs}    
    Click Element    ${sup_radio_mrs}
    Input Text    ${sup_tbox_first_name}    Hacker
    Input Text    ${sup_tbox_last_name}   School
    Textfield Should Contain    ${sup_tbox_email}    hello@trtrr.tr
    Input Password    ${sup_pwd_password}    password
    Select From List By Index    ${sup_dropdown_day}    26    
    Select From List By Label    ${sup_dropdown_month}    March${SPACE}
    Select From List By Value    ${sup_dropdown_year}    2010  
    Click Element    ${sup_chck_newsletter}
    Textfield Should Contain    ${addr_tbox_first_name}    Hacker   
    Textfield Should Contain    ${addr_tbox_last_name}    School
    Input Text    ${addr_tbox_address1}    Gorazdova, 4444
    Input Text    ${addr_tbox_city}    Prague
    Select From List By Label    ${addr_dropdown_state}    Arizona
    Input Text    ${addr_tbox_zip}    12000
    Input Text    ${addr_tbox_cellphone}    +420666999888
#    Clear Element Text    addr_tbox_alias
#    Input Text    ${addr_tbox_alias}    XYZ
    Click Button    ${sup_btn_register}
    Wait Until Page Contains    Welcome to your account. Here you can manage all of your personal information and orders.    
                      