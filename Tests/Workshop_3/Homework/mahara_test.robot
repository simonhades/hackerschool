*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser To Mahara
Test Teardown    Capture Screenshot And Close Browser

Resource    ../../../Keywords/Mahara/Mahara_Keywords.txt


*** Test Cases ***
Mahara Invalid Login
    Login To Mahara    &{USERS}[INVALID]    &{PASSWORDS}[INVALID]
    Credentials And Form Alerts
    
Mahara Admin Login
    Login To Mahara    &{USERS}[ADMIN]    &{PASSWORDS}[VALID]
    Person Should Be Logged    &{PERSON}[ADMIN]

Mahara Student Login
    Login To Mahara    &{USERS}[STUDENT]    &{PASSWORDS}[VALID]
    Person Should Be Logged    &{PERSON}[STUDENT]
    
Mahara Learner Login
    Login To Mahara    &{USERS}[LEARNER]    &{PASSWORDS}[VALID]
    Person Should Be Logged    &{PERSON}[LEARNER]
    
Mahara Staff Login
    Login To Mahara    &{USERS}[STAFF]    &{PASSWORDS}[VALID]
    Person Should Be Logged    &{PERSON}[STAFF]
    
Mahara Sitestaff Login
   Login To Mahara    &{USERS}[SITESTAFF]    &{PASSWORDS}[VALID]
   Person Should Be Logged    &{PERSON}[SITESTAFF]