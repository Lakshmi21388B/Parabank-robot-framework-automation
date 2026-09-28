*** Settings ***
Documentation    This test suite is to test Parabank account creation page
Library          SeleniumLibrary
Resource         ../Resources/Commonkeywords.robot
Resource         ../Resources/Registerkeywords.robot
Resource         ../Resources/Loginkeywords.robot
Resource         ../Resources/Createaccountkeywords.robot
Resource         ../Resources/Transferfundkeywords.robot
Suite Setup      Launch Browser
Suite Teardown   Close the Browser

*** Test Cases ***
User registration
    Fill the registration form       ${firstname}     ${lastname}    ${address}    ${city}    ${state}     ${zipcode}   ${phone}    ${SSN}    ${username}    ${password}    ${repeatpassword}
Login with registered user
    Fill the login form            ${username}    ${password}
    Logout
Account opening for registered user
    Fill the account form         ${username}    ${password}     0    0
    Logout
Fund Transfer
    Transfer the fund        ${username}      ${password}     10    0    0
       