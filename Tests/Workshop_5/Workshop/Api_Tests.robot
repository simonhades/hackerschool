*** Settings ***
Library    REST    https://jsonplaceholder.typicode.com/
Variables    ../../../Resources/API/New_Users_API.py
Test Teardown    Output    response    ${OUTPUTDIR}/response.json 

*** Variables ***
${new_user}    {"id": 11, "name": "John Doe"}

*** Test Cases ***
Create New User
    [Template]    Add New User
    :FOR    ${user}    IN    @{new_test_users}
    \    ${user}
    
*** Keywords ***
Add New User
    [Arguments]    ${user}
    POST    /users    ${user}
    Output    request body   ${OUTPUTDIR}/request.json
    Integer    response status    201


*** inactive ***

Simple Get
    Set Headers    {"autorization":"dasdasda"}
    GET    /users/1
    Object    response body
    String    response body name    Leanne Graham
    Integer    response status    200
    Output    request body   ${OUTPUTDIR}/request.json
    
    
Verify Required Fields
    GET    /users/1
    Object    response body    required=["id", "name"]
    Expect Response Body    {"required":["id", "name"]}
    Clear Expectations
   
Create New User
    POST    /users    ${new_user}
    Output    request body   ${OUTPUTDIR}/request.json
   
Delete A User 
    DELETE    /user/1
    Integer    response status    200    202    204 
    
    
Add New Fields To User
    PUT    /users/1    {"new_field": "1455555", "money": 100, "single": true}
    Integer    response body money    100
    Boolean    response body single    true
    Output    request body   ${OUTPUTDIR}/request.json
    
Update User
    ${res}=    GET    /users/1
    PATCH    /users/2    {"name": "John Doe"}
    String    response body name    John Doe