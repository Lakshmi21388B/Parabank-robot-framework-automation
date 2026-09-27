*** Settings ***
Documentation    This resource file containing keywords for OrangeHRM login page
Library          SeleniumLibrary
Resource         ../PageObjects/Transferfundpage.robot
Resource         ../Resources/Loginkeywords.robot


*** Keywords ***
Transfer the fund
    [Arguments]       ${username}   ${password}      ${amount}    ${fromaccountid}    ${toaccountid}
    Logout
    Fill the login form   ${username}    ${password}
    Go to transfer link     
    Enter amount               ${amount} 
    Enter fromaccountid        ${fromaccountid} 
    Enter toaccountid         ${toaccountid}
    Transfer amount
    