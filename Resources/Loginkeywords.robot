*** Settings ***
Documentation    This resource file containing keywords for parabank login page
Library          SeleniumLibrary
Resource         ../PageObjects/Loginpage.robot
Resource         ../PageObjects/Registrationpage.robot


*** Keywords ***
Fill the login form
    [Arguments]      ${username}    ${password}
    Give Username    ${username}
    Give password    ${password}
    Login
 Logout from application
    Logout   
    
