*** Settings ***
Library    SeleniumLibrary
Library    Collections
Variables	../../Objects/homework04/Products_Objects.py
Variables   ../../Resources/Homework04/Woman_Section_Data.py

*** Variables ***
${url}	http://automationpractice.com/index.php
${browser}	chrome

*** Keywords ***
Compare Values       
    [Arguments]    ${sort_by}
    ${price}=    Get Text    ${Product_price}
    ${price2}=    Get Text     ${Product_price_2}
    ${price3}=    Get Text     ${Product_price_3}
    ${price4}=    Get Text     ${Product_price_4}
    ${price5}=    Get Text     ${Product_price_5}
    ${price6}=    Get Text     ${Product_price_6}
    ${price7}=    Get Text     ${Product_price_7}
    @{list}=    Create List    ${price}    ${price2}    ${price3}    ${price4}    ${price5}    ${price6}    ${price7}
    Lists Should Be Equal    ${list}    ${correct_prices['${sort_by}']}

# Check whether the number of shown products is correct
Number Of Products
    [Arguments]    ${number_of_products}
    Wait Until Page Contains    Showing 1 - ${number_of_products} of ${number_of_products} items    
    Page Should Contain    Showing 1 - ${number_of_products} of ${number_of_products} items
    Locator Should Match X Times    ${Product}    ${number_of_products}

# Check whether all products are shown
All Products Are Shown
    Page Should Contain    Showing 1 - 7 of 7 item
    Locator Should Match X Times    ${Product}    7

# Select sort option from list
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

# Go to product page
Open Products
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    ${Button_woman}
    Wait Until Page Contains Element    ${Sort_by_dropdown}
    
Capture Screenshot And Close Browser
    Capture Page Screenshot    
    Close Browser