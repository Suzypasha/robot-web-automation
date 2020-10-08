*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
Get Window Title
    ${Title}=    get title
    log to console    ${Title}
    [Return]    ${Title}
    Close Browser
