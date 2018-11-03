*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser To Mahara
Test Teardown    Capture Screenshot And Close Browser

Resource    ../../../Keywords/Mahara/Mahara_Keywords.txt
Resource    ../../../Keywords/Mahara/Mahara_Data.txt


*** Test Cases ***
Mahara Invalid Login   
    Login To Mahara    &{USERS}[INVALID]    &{PASSWORDS}[INVALID]
    Credentials And Form Alerts
    
Mahara Admin Login
    Login To Mahara    &{USERS}[ADMIN]    &{PASSWORDS}[VALID]
    Admin Should Be Logged

#Mahara Student Login
#    Login To Mahara    &{USERS}[STUDENT]    &{PASSWORDS}[VALID]
#    Student Should Be Logged
    
#Mahara Learner Login
#    Login To Mahara    &{USERS}[LEARNER]    &{PASSWORDS}[VALID]
#    Learner Should Be Logged
    
#Mahara Staff Login
#    Login To Mahara    &{USERS}[STAFF]    &{PASSWORDS}[VALID]
#    Staff Should Be Logged
    
#Mahara Sitestaff Login
#   Login To Mahara    &{USERS}[SITESTAFF]    &{PASSWORDS}[VALID]
#   Sitestaff Should Be Logged