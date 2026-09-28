*** Settings ***
Documentation    This PO file containing locators for Parabank Createaccount page
Library          SeleniumLibrary
Resource         ../Resources/Commonkeywords.robot


*** Variables ***
${openaccountlink}    css:a[href='openaccount.htm']
${accounttypefield}   xpath://select[@id='type']
${existaccountfield}    xpath://select[@id='fromAccountId']
${accountsubmitfield}    css:input[value='Open New Account']  
${accountsuccess}         //b[contains(.,'Your new account number:')]/following-sibling::a  

*** Keywords ***
Open account
    Wait until the targeted element is visible        ${openaccountlink}
    Click Element    ${openaccountlink}
Type of account
    [Arguments]        ${accounttype}
    Wait until the targeted element is visible        ${accounttypefield}
    Select From List By Index   ${accounttypefield}     ${accounttype}
Existing account selection
    [Arguments]        ${existaccount}
    Wait until the targeted element is visible        ${existaccountfield} 
    Select From List By Index   ${existaccountfield}      ${existaccount}
Account submit
    Wait until the targeted element is visible        ${accountsubmitfield} 
    Click Element    ${accountsubmitfield}  
Account opened
      Wait until the targeted element is visible        ${accountsuccess}  
      Click Element    ${accountsuccess}   

