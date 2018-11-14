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

Sort By Product Name
    [Template]    Sort By Name Option
    :FOR    ${sort_by}    IN    @{sort_by_name}
    \    ${sort_by}

Sort By Price
    [Template]    Sort By Price Option
    :FOR    ${sort_by}    IN    @{sort_by_price}
    \    ${sort_by}

Correct Number Of Products Is Shown After Filtering
    [Template]    Apply Filters For Products
    :FOR    ${filter}    IN    @{show_${number_of_products}_products}
    \    ${filter}  
 
        
*** Keywords ***
Sort By Name Option
    [Arguments]    ${sort_by}
    Choose Option For Sorting    ${sort_by}
    ${name}=    Get Text    ${Product_name}
    ${name2}=    Get Text     ${Product_name_2}
    ${name3}=    Get Text     ${Product_name_3}
    ${name4}=    Get Text     ${Product_name_4}
    ${name5}=    Get Text     ${Product_name_5}
    ${name6}=    Get Text     ${Product_name_6}
    ${name7}=    Get Text     ${Product_name_7}
    @{original}=    Create List    ${name}    ${name2}    ${name3}    ${name4}    ${name5}    ${name6}    ${name7}
    @{unsorted}    Copy List    ${original}
    Sort List    ${original}
    Run Keyword If    '${sort_by}'=='Product Name: Z to A'    Reverse List    ${original}     
    log to console    ${original}
    log to console    ${unsorted}
    Lists Should Be Equal    ${original}    ${unsorted}
    
Sort By Price Option
    [Arguments]    ${sort_by}
    Choose Option For Sorting    ${sort_by}
    ${price}=    Get Text    ${Product_price}
    ${price2}=    Get Text     ${Product_price_2}
    ${price3}=    Get Text     ${Product_price_3}
    ${price4}=    Get Text     ${Product_price_4}
    ${price5}=    Get Text     ${Product_price_5}
    ${price6}=    Get Text     ${Product_price_6}
    ${price7}=    Get Text     ${Product_price_7}
    @{original}=    Create List    ${price}    ${price2}    ${price3}    ${price4}    ${price5}    ${price6}    ${price7}
    @{unsorted}    Copy List    ${original}
    Sort List    ${original}
    Run Keyword If    '${sort_by}'=='Price: Highest first'    Reverse List    ${original}     
    log to console    ${original}
    log to console    ${unsorted}
    Lists Should Be Equal    ${original}    ${unsorted}
    
Sorting All Options
    [Arguments]    ${sort_by}
    Choose Option For Sorting    ${sort_by}
    Compare Values   ${sort_by}
    Page Should Contain    Showing 1 - 7 of 7 items     
    
Apply Filters For Products
    [Arguments]    ${filter}
    Choose Option For Filtering    ${filter}
    Number Of Products    ${number_of_products}       
    Clear Filtering
    All Products Are Shown
         
    
    
