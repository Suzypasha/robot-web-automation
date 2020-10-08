*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/userKeywords.py
Documentation    This contains keywords and a pointer to external user created keywords
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
    [Arguments]     ${foldername}      ${subfoldername}
    createDir       ${foldername}
    createSubDir        ${subfoldername}
    Log     "Directories created sucessfully"

Concatenate User Name and Password
    [Arguments]    ${username}      ${password}
    ${Result}=    concatenate     ${username}      ${password}
    Log     ${Result}