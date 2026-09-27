*** Settings ***
Documentation    This PO file containing locators for Parabank registration page
Library          SeleniumLibrary
Resource         ../Resources/Commonkeywords.robot

*** Variables ***
${Registerlink}             xpath://a[normalize-space()='Register']
${firstname_field}          name:customer.firstName
${Lastname_field}           name:customer.lastName
${address_field}            name:customer.address.street
${city_field}               name:customer.address.city
${state_field}              name:customer.address.state
${Zipcode_field}            name:customer.address.zipCode
${phone_field}              name:customer.phoneNumber
${SSN_field}                name:customer.ssn
${registrationusername_field}           xpath://input[@id='customer.username']
${registrationpassword_field}           xpath://input[@id='customer.password']
${confirm_field}            xpath://input[@id='repeatedPassword']
${Register}                 xpath://input[@value='Register']
#${repeatedpassworderror}    id:repeatedPassword.errors 
${sucessmessage}            Your account was created successfully. You are now logged in.
${sucessmessagelocator}     xpath://p[contains(text(),'Your account was created successfully. You are now')]  
${logoutfield}              //a[contains(text(),'Log Out')]

*** Keywords ***
Access Register link
    Wait until the targeted element is visible       ${Registerlink} 
    Click Element        ${Registerlink} 
    Wait Until Page Contains Element    ${registrationusername_field}    10s
Enter firstname
    [Arguments]       ${firstname}
    Input Text        ${firstname_field}      ${firstname}
Enter lastname
    [Arguments]       ${lastname}
    Input Text        ${Lastname_field}       ${lastname}
Enter address
    [Arguments]       ${address}
    Input Text        ${address_field}       ${address}          
Enter City             
    [Arguments]       ${city}
    Input Text        ${city_field}      ${city}
Enter state            
    [Arguments]       ${state}
    Input Text        ${state_field}      ${state}
Enter zipcode          
    [Arguments]     ${zipcode}
    Input Text      ${Zipcode_field}    ${zipcode}
Enter phone      
    [Arguments]     ${phone}
    Input Text      ${phone_field}    ${phone}   
Enter SSN              
    [Arguments]     ${SSN}
    Input Text      ${SSN_field}    ${SSN}   
Enter username 
    [Arguments]     ${username}
    Wait Until Page Contains Element               ${registrationusername_field}    10s
    #Wait until the targeted element is visible     ${username_field}
    #Click Element    ${username_field}
    Input Text      ${registrationusername_field}    ${username} 
Enter password      
    [Arguments]     ${password}
    Wait Until Page Contains Element    ${registrationpassword_field} 
    #Wait until the targeted element is visible     ${password_field} 
    #Click Element    ${password_field} 
    Input Password  ${registrationpassword_field}     ${password} 
Enter repeatpassword   
    [Arguments]     ${repeatpassword}
    Wait Until Page Contains Element    ${confirm_field}
    #Wait until the targeted element is visible     ${confirm_field} 
    #Click Element    ${confirm_field}  
    Input Password  ${confirm_field}    ${repeatpassword}  
Click Register
    Click Button        ${Register} 
Verify user creation
    ${printmessage}=    Wait until the page contains message    ${sucessmessage}    ${sucessmessagelocator}
    Log To Console      ${printmessage}
    Log To Console      Registration successful
Logout
    Wait until the targeted element is visible    ${logoutfield}
    Click Element                                 ${logoutfield}
        
   