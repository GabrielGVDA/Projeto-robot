*** Settings ***
Resource    ../resources/login_keywords.resource
Library    SeleniumLibrary
Test Setup    Open Browser    browser=edge
*** Variables ***
${URL}    https://www.saucedemo.com/

*** Test Cases ***
Successful Login
    I navigate to the login page     ${URL}   
    Input correct credentials       
    I click on the login button
    i am able view the home page

Unsuccessful Login - No credentials
    I navigate to the login page    ${URL}
    Input No credentials
    I click on the login button
    i am able view the Class Error Message for no credentials
Unsuccessful Login - No Password
    I navigate to the login page     ${URL}
    Input correct Username
    I click on the login button
    i am able view the Class Error Message for no password
Unsuccessful Login - No Username
    I navigate to the login page     ${URL}
    Input correct Password
    I click on the login button
    i am able view the Class Error Message for no username
Unsuccessful Login - Wrong credentials
   I navigate to the login page     ${URL}
    Input wrong credentials
    I click on the login button
    i am able view the Class Error Message for wrong credentials