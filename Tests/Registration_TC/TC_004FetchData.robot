*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/Resources1.robot

*** Variables ***
##Web URL
${url}    https://www.thetestingworld.com/testings
##Browser type
${browser}  IE

*** Test Cases ***
Robot Fetch Data

    Open Browser    ${url}      ${browser}
    Maximize Browser Window

    Concatenate User Name and Password      Bob     123456

    Close Browser


