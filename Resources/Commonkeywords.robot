*** Settings ***
Documentation    This resource file containing common keywords for Parabank automation
Library          SeleniumLibrary


*** Variables ***
${url}                https://parabank.parasoft.com/parabank/index.htm
${browser}            Chrome
${firstname}          Ambika                                            
${lastname}           shetty
${address}            Medavakkam
${city}               Chennai 
${state}              Tamilnadu
${zipcode}            600001
${phone}              9345689000
${SSN}                1A1
${username}           Winning21
${password}           horse21
${repeatpassword}     horse21

*** Keywords ***
Launch Browser
    # This function is to chrome in guest mode to prevent autosave 
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --guest
    Create Webdriver    Chrome    options=${options}
    #Navigate to the url in the chrome browser that is already open
    Go To     ${url}   
    Maximize Browser Window
    sleep     3

Validating title page
    ${title}=    Get Title 
    Log To Console  ${title}   
      
Close the Browser
    Close Browser

Wait until the targeted element is visible
    [Arguments]    ${locator}
    Wait Until Element Is Visible       ${locator}    10s  

Wait until page contains required element
    [Arguments]    ${element}
    Wait Until Page Contains Element    ${element}    10s

Wait until the page contains message
    [Arguments]    ${message}    ${messagelocator}
    Wait Until Page Contains     ${message}    10s
    ${text}=     Get Text     ${messagelocator} 
    RETURN     ${text}