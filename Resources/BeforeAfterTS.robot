*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/userKeywords.py

*** Variables ***
${url}    https://www.thetestingworld.com/testings
${browser}    Chrome

*** Keywords ***
Start Browser and Mazimize
    Open Browser    ${url}    ${browser}
    maximize browser window

Get Window Title And Close
    ${Title}=    get title
    log    ${Title}
    #[Return]    ${Title}
    Close Browser

Before Each Test Suite
    Log    Before Each Test Suite

After Each Test Suite
    Log    After Each Test Suite

Create Folder At Runtime
    createDir