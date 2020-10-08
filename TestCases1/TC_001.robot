*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${var1}     http://www.thetestingworld.com

*** Test Cases ***
TC_001 Login logout Functionality
    ${var2}=    open browser    ${var1}     chrome
    maximize browser window