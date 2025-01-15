*** Settings ***
Library    SeleniumLibrary
Variables    ../variables/variables.py

*** Keywords ***
I navigate to the login page
    [Arguments]    ${URL}
    Go To    ${URL}
Input correct credentials
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA["correctData"]["username"]}
    Input Text    id=password    ${LOGIN_DATA["correctData"]["password"]}   
Input correct Username   
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA["correctData"]["username"]}  
Input correct Password 
    Wait Until Element Is Visible    id=user-name
    Input Text    id=password    ${LOGIN_DATA["correctData"]["password"]}  
Input wrong credentials
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA["wrongData"]["username"]}
    Input Text    id=password    ${LOGIN_DATA["wrongData"]["password"]}
I click on the login button
    Click Button    id=login-button
i am able view the home page
     ${location}    Get location
    Should Be Equal    ${location}    https://www.saucedemo.com/inventory.html
Input No credentials
      Wait Until Element Is Visible    id=user-name

i am able view the Class Error Message for no credentials
        Wait Until Element Contains    class=error-message-container    ${Error_Message["noCredentials"]}

i am able view the Class Error Message for no username
    Wait Until Element Contains    class=error-message-container    ${Error_Message["noUsername"]}

i am able view the Class Error Message for no password
    Wait Until Element Contains    class=error-message-container    ${Error_Message["noPassword"]}

i am able view the Class Error Message for wrong credentials
    Wait Until Element Contains    class=error-message-container    ${Error_Message["wrongCredential"]}
    