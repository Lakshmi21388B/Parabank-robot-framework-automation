*** Settings ***
Documentation    This resource file containing keywords for Register page
Library          SeleniumLibrary
Resource         ../Resources/Commonkeywords.robot
Resource         ../PageObjects/Registrationpage.robot


*** Keywords ***
Fill the registration form
    [Arguments]            ${firstname}     ${lastname}    ${address}    ${city}    ${state}     ${zipcode}   ${phone}    ${SSN}    ${username}    ${password}    ${repeatpassword}
    Validating title page
    Access Register link
    Enter firstname        ${firstname}
    Enter lastname         ${lastname} 
    Enter address          ${address}
    Enter City             ${city}
    Enter state            ${state}
    Enter zipcode          ${zipcode}   
    Enter phone            ${phone}    
    Enter SSN              ${SSN}    
    Enter username         ${username}    
    Enter password         ${password}    
    Enter repeatpassword   ${repeatpassword}
    Click Register 
    Verify user creation
    Logout
    
    
    

