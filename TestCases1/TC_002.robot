*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources1/UserKeywords.robot

*** Variables ***
${var1}     http://www.thetestingworld.com

*** Test Cases ***
TC_001 Login logout Functionality
    open browser    ${var1}     chrome
    maximize browser window

    #Get the number of rows in the datasheet using keuword
    ${row}=   Read Number of Rows     Sheet1

    # use the value from above to read allthe cells
    FOR   ${row}     IN RANGE    1    ${row} +1
        ${username}=    Read Excel Data Of Cell    Sheet1   ${row}   1
        ${password}=    Read Excel Data Of Cell    Sheet1   ${row}   2
        Log To Console      ${username}
        Log To Console      ${password}
        click element    xpath://a[text()='Login']
        input text    id:username       ${username}
        input password    id:password       ${password}
        click button    xpath://button[@type='submit']
        sleep    1 seconds

    END



