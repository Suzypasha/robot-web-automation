*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.thetestingworld.com/testings
${browser}    Chrome

*** Keywords ***
Start Browser and Mazimize
    Open Browser    ${url}    ${browser}
    maximize browser window

Get Window Title
    ${Title}=    get title
    log    ${Title}
    [Return]    ${Title}
    Close Browser

