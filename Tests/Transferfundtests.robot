*** Settings ***
Documentation    This PO file containing locators for Parabank Transferfund page
Library          SeleniumLibrary
Resource         ../Resources/Commonkeywords.robot
Resource         ../Resources/Transferfundkeywords.robot
Suite Setup      Launch Browser
Suite Teardown   Close the Browser

*** Test Cases ***
Send amount from one account to another account using
    ${amount}=     Set Variable    20    
    Transfer the fund     ${username}    ${password}    ${amount}    0    0
    