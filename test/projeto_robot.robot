*** Settings ***
Resource    ../resources/login_keywords.resource
Library    SeleniumLibrary
Test Setup    Open Browser    browser=edge
*** Variables ***
${URL}    https://www.saucedemo.com/
${BROWSER}    edge
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Successful Login
    I navigate to the login page     ${URL}   
    Input correct credentials    ${USERNAME}    ${PASSWORD}    
    I click on the login button
    i am able view the home page

Unsuccessful Login - No credentials
    I navigate to the login page    ${URL}
    Input No credentials
    I click on the login button
    i am able view the Class Error Message    Epic sadface: Username is required
Unsuccessful Login - No Password
    I navigate to the login page     ${URL}
    Input correct Username    ${USERNAME}
    I click on the login button
    i am able view the Class Error Message    Epic sadface: Password is required
Unsuccessful Login - No Username
    I navigate to the login page     ${URL}
    Input correct Password    ${PASSWORD}
    I click on the login button
    i am able view the Class Error Message    Epic sadface: Username is required
Unsuccessful Login - Wrong credentials
   I navigate to the login page     ${URL}
    Input wrong credentials    WrongU    WrongP
    I click on the login button
    i am able view the Class Error Message    Epic sadface: Username and password do not match any user in this service