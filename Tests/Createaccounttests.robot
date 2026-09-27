*** Settings ***
Documentation    This test suite is to test Parabank account creation page
Library          SeleniumLibrary
Resource         ../Resources/Commonkeywords.robot
Resource         ../Resources/Createaccountkeywords.robot
Suite Setup      Launch Browser
Suite Teardown   Close the Browser

*** Test Cases ***
Account open using     
    Fill the account form        ${username}    ${password}     0    0
    Logout from application