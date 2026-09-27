*** Settings ***
Documentation    This test suite is to test Parabank registration page
Library          SeleniumLibrary
Resource         ../Resources/Commonkeywords.robot
Resource         ../Resources/Registerkeywords.robot
Suite Setup      Launch Browser
Suite Teardown   Close the Browser


*** Test Cases ***
Register new customer using
    Fill the registration form         ${firstname}     ${lastname}    ${address}    ${city}    ${state}     ${zipcode}   ${phone}    ${SSN}    ${username}    ${password}    ${repeatpassword}
    
    
