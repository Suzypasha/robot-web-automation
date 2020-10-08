*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${var1}    https://www.thetestingworld.com
${var2}    https://www.google.com

*** Test Cases ***
Multi Windows
    open browser   ${var1}    Chrome
    maximize browser window
    log to console    Opening URL ${var1}
    open browser  ${var2}    Chrome
    maximize browser window
    log to console    Opening URL ${var2}
    switch browser    1
    click link    xpath://a[text()='Login']
    input text    name:username    Hello World
    sleep    10 s
    switch browser    2
    select window
    input text    name:q    Hello World
    close all browsers

#    wait until element contains    xpath://a[contains(text(),'Login')]    Login
#   # click element    xpath://a[(text()='Login')]
#    click link    xpath://a[(text()='Login')]

    #wait until page contains element    xpath://span[contains(text(),'VIDEOS')]
    #click element    xpath://span[contains(text(),'VIDEOS')]
    #click link    xapth://*[@id="ja-search"]/ul/li[1]/a
    #click link    xpath://a[text()='Login']
    #click link    css=a[text='Login']
    #input text    id:username    Hello
#    press keys    id:username    Hello
#    press keys    xpath://button[@type='submit']    \\13
#    sleep    5 seconds
#    close browser