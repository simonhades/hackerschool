*** Settings ***
Library    SeleniumLibrary
Variables	../../Objects/homework04/Products_Objects.py

*** Variables ***
${url}	http://automationpractice.com/index.php
${browser}	chrome

*** Keywords ***

Number Of Products
    [Arguments]    ${number_of_products}
    Wait Until Page Contains    Showing 1 - ${number_of_products} of ${number_of_products} items    
    Page Should Contain    Showing 1 - ${number_of_products} of ${number_of_products} items
    Locator Should Match X Times    ${Product}    ${number_of_products}

All Products Are Shown
    Page Should Contain    Showing 1 - 7 of 7 item
    Locator Should Match X Times    ${Product}    7
    
Choose Option For Sorting
    [Arguments]    ${sort_by}
    Select From List By Label    ${Sort_by_dropdown}    ${sort_by}   
    Wait Until Page Contains Element    ${Loader_not_visible}   
    
Choose Option For Filtering
    [Arguments]    ${filter_by}
    Click Element    ${filters['${filter_by}']}
    Wait Until Page Contains Element    ${Loader_not_visible}
    
Clear Filtering
    Click Element    ${Remove_filter}
    Wait Until Page Does Not Contain Element    ${Remove_filter}

Open Products
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    ${Button_woman}
    Wait Until Page Contains Element    ${Sort_by_dropdown}
    
Capture Screenshot And Close Browser
    Capture Page Screenshot    
    Close Browser