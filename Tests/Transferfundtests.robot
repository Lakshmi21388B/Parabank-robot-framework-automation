*** Settings ***
Documentation    This PO file containing locators for Parabank registration page
Library          SeleniumLibrary
Resource         ../Resources/Commonkeywords.robot
Resource         ../Resources/Transferfundkeywords.robot
Suite Setup      Launch Browser
Suite Teardown   Close the Browser

*** Test Cases ***
Send amount from one account to another account using
    Transfer the fund     ${username}    ${password}    1000    0    0
    