*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../../Keywords/Homework04/Products_Keywords.robot
Variables   ../../../Resources/Homework04/Woman_Section_Data.py
Variables    ../../../Objects/Homework04/Products_Objects.py
Test Setup    Open Products    
Test Teardown    Capture Screenshot And Close Browser


*** Test Cases ***
Filter Showing 2 Products
    [Template]    Apply Filters For 2 Products
    :FOR    ${filter}    IN    @{show_2_products}
    \    ${filter}  
   
Sort By
    [Template]    Sorting All Options
    :FOR    ${sort_by}    IN    @{sort_by_options}
    \    ${sort_by}    

*** Keywords ***
Apply Filters For 2 Products
    [Arguments]    ${filter}
    Choose Option For Filtering    ${filter}
    Page Should Contain    Showing 1 - 2 of 2 items 
    Clear Filtering
    Page Should Contain    Showing 1 - 7 of 7 items
     
Sorting All Options
    [Arguments]    ${sort_by}
    Choose Option For Sorting    ${sort_by}
    Page Should Contain    Showing 1 - 7 of 7 items



