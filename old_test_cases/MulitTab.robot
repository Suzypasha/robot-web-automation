*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${var1}    https://www.robotframework.org

*** Test Cases ***
Multi Tabs
    open browser   ${var1}    Chrome
    maximize browser window

    click button    id:details-button
    click link    id:proceed-link
    sleep    5 s
    click link    xpath://a[text()='Robohub']
    @{list1}    get window handles
    FOR    ${win}    IN    @{list1}
        select window    ${win}
        ${url}=    get location
        log to console    ${url}
    END








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