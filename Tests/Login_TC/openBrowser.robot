*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${var1}    https://www.thetestingworld.com/testings
${var2}    Login

*** Test Cases ***
Open Browser Login
    open browser    ${var1}    Chrome
    maximize browser window
    title should be     Login & Sign Up Forms
    element should not be visible    name:fld_username



#    #element text should be    xpath://div[@id='tab-content1']/p    Register now and kick start your career as a Software Testing Pro!
#    element should contain    xpath://div[@id='tab-content1']/p     Register now
#    input text    name:fld_username    testing
    sleep    3 seconds
    close browser



#    click element    xpath://a[(text()='Login')]
#    #click link    xpath://a[(text()='Login')]
#    page should contain textfield    name:username
#    select checkbox    name:remember
#    sleep    3 seconds
#    checkbox should be selected    name:remember
#    click element    name:remember
#    checkbox should not be selected    name:remember
##    input text    name:username  robertjhall67@gmail.com
##    input text    name:password  testing123
