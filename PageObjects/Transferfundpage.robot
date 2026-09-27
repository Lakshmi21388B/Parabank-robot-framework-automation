*** Settings ***
Documentation    This PO file containing locators for Parabank registration page
Library          SeleniumLibrary
Resource         ../Resources/Commonkeywords.robot
Resource         ../PageObjects/Createaccountspage.robot

*** Variables ***
${transferlink}       xpath=//a[normalize-space()='Transfer Funds']
${amountfield}        //input[@id='amount']
${fromaccountfield}   //select[@id='fromAccountId']
${toaccountfield}    //select[@id='toAccountId']
${transfer}          xpath:(//input[@value='Transfer'])[1]

*** Keywords ***
Go to transfer link
    Sleep    2
    Wait until the targeted element is visible    ${transferlink} 
    Click Element    ${transferlink} 
Enter amount
    [Arguments]          ${amount}
    Wait until the targeted element is visible    ${amountfield} 
    Click Element    ${amountfield} 
    Input Text           ${amountfield}      ${amount}
Enter fromaccountid
    [Arguments]          ${fromaccountid}
    Select From List By index           ${fromaccountfield}     ${fromaccountid}
Enter toaccountid
    [Arguments]          ${toaccountid}
    Select From List By Index           ${toaccountfield}       ${toaccountid}
Transfer amount
    Click Button        ${transfer}
    




