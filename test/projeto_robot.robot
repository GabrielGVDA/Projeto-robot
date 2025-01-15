*** Settings ***
Resource    ../resources/login_keywords.resource
Suite Setup    Open Browser    browser=edge

*** Test Cases ***
Successful Login
    I navigate to the login page  
    Input correct credentials       
    I click on the login button
    I am able to view the home page 

Unsuccessful Login - No credentials
    I navigate to the login page
    Input No credentials
    I click on the login button
    i am able view the Class Error Message for no credentials
Unsuccessful Login - No Password
    I navigate to the login page
    Input correct Username
    I click on the login button
    i am able view the Class Error Message for no password
Unsuccessful Login - No Username
    I navigate to the login page
    Input correct Password
    I click on the login button
    i am able view the Class Error Message for no username
Unsuccessful Login - Wrong credentials
   I navigate to the login page
    Input wrong credentials
    I click on the login button
    i am able view the Class Error Message for wrong credentials