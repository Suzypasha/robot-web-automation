#User created Keyword = Enter Logon Details: that enters logon details that test user will supply
*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Enter Logon Details
    [Arguments]    ${username}    ${email}    ${password}
    input text    name:fld_username    ${username}
    input text    name:fld_email    ${email}
    input text    name:fld_password    ${password}

