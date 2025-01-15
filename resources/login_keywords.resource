*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
I navigate to the login page
    [Arguments]    ${URL}
    Go To    ${URL}
Input correct credentials
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password    ${PASSWORD}   
Input correct Username
    [Arguments]    ${USERNAME}   
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${USERNAME}  
Input correct Password
    [Arguments]    ${PASSWORD}   
    Wait Until Element Is Visible    id=user-name
    Input Text    id=password    ${PASSWORD}  
Input wrong credentials
    [Arguments]    ${WRONG_USERNAME}    ${WRONG_PASSWORD}
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${WRONG_USERNAME}
    Input Text    id=password    ${WRONG_PASSWORD}
I click on the login button
    Click Button    id=login-button
i am able view the home page
     ${location}    Get location
    Should Be Equal    ${location}    https://www.saucedemo.com/inventory.html
Input No credentials
      Wait Until Element Is Visible    id=user-name
i am able view the Class Error Message
    [Arguments]    ${ERROR_MESSAGE}
    Wait Until Element Contains    class=error-message-container    ${ERROR_MESSAGE}