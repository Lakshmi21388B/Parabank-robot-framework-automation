*** Settings ***
Documentation    This resource file containing keywords for OrangeHRM login page
Library          SeleniumLibrary
Resource         ../PageObjects/Createaccountspage.robot
Resource         ../Resources/Loginkeywords.robot


*** Keywords ***
Fill the account form        
    [Arguments]     ${username}    ${password}    ${accounttype}    ${existaccount}
    Fill the login form    ${username}    ${password}
    Open account
    Type of account     ${accounttype}
    Existing account selection    ${existaccount}
    Account submit
    Account opened