*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic information about the test
    [Tags]    Smoke
    OPEN BROWSER    http://amazon.co.uk    chrome
    Maximize Browser Window
    Wait Until Page Contains    Sign in
    input text  id=twotabsearchtextbox    Ferrari 458
    click button    xpath://input[@type='submit']
    Wait Until Page Contains    results for "Ferrari 458"

    mouse down    xpath://*[@id="search"]/div[1]/div/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div
    mouse up    xpath://*[@id="search"]/div[1]/div/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div
    wait until page contains    Back to results
    click button    css=#add-to-cart-button





#    sleep    3
#    close browser
*** Keywords ***
