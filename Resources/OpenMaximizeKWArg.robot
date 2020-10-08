#User created Keyword = Start Browser and Mazimize: that opens and maximizes browser url that use will supply
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${url}    https://www.thetestingworld.com/testings
#${browser}    Chrome

*** Keywords ***
Start Browser and Mazimize
    [Arguments]    ${usrURL}    ${InputBrowser}
    Open Browser    ${usrURL}    ${InputBrowser}
    Maximize browser window