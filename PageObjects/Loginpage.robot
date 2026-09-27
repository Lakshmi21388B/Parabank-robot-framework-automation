*** Settings ***
Documentation    This PO file containing locators for Parabank registration page
Library          SeleniumLibrary
Resource         ../Resources/Commonkeywords.robot


*** Variables ***
${usernamefield}     name:username
${passwordfield}    //input[@name='password']
${login}            //input[@value='Log In']

*** Keywords ***
Give Username
    [Arguments]    ${username}
    Wait until the targeted element is visible    ${usernamefield}
    Input Text     ${usernamefield}     ${username}

Give password
    [Arguments]    ${password}
    Wait until the targeted element is visible      ${passwordfield}
    Input Text     ${passwordfield}     ${password}

Login
    Wait until the targeted element is visible     ${login} 
    Click Element    ${login} 

