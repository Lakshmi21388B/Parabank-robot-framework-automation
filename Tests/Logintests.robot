*** Settings ***
Documentation    This test suite is to test Parabank login page
Library          SeleniumLibrary
Resource         ../Resources/Loginkeywords.robot
Suite Setup      Launch Browser
Suite Teardown   Close the Browser


*** Test Cases ***
Login with valid credentials        
...    Fill the login form     ${username}    ${password}    
Logout from the application
        Logout from application