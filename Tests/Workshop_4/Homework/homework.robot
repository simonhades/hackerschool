*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../../Keywords/Homework04/Products_Keywords.robot
Variables   ../../../Resources/Homework04/Woman_Section_Data.py
Variables    ../../../Objects/Homework04/Products_Objects.py
Test Setup    Open Products    
Test Teardown    Capture Screenshot And Close Browser

*** Variables ***
# test parametrization - check correct number of product shown after filtering
${number_of_products}    number_of_products

*** Test Cases ***
Sort By
    [Template]    Sorting All Options
    :FOR    ${sort_by}    IN    @{sort_by_options}
    \    ${sort_by}

Correct Number Of Products Is Shown After Filtering
    [Template]    Apply Filters For Products
    :FOR    ${filter}    IN    @{show_${number_of_products}_products}
    \    ${filter}  
        
*** Keywords ***
Sorting All Options
    [Arguments]    ${sort_by}
    Choose Option For Sorting    ${sort_by}
    Compare Values    ${sort_by}
    Page Should Contain    Showing 1 - 7 of 7 items     
    
Apply Filters For Products
    [Arguments]    ${filter}
    Choose Option For Filtering    ${filter}
    Number Of Products    ${number_of_products}       
    Clear Filtering
    All Products Are Shown
     


    
    
