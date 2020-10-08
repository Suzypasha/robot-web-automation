*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazon.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.co.uk  chrome
    maximize browser window
    sleep  3s
    #Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    #Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    click button   css=#nav-search > form > div.nav-right > div > input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Element    xpath://*[@id="search"]/div[1]/div/div[1]/div/span[3]/div[2]/div[1]
    Sleep    3s
    Wait Until Page Contains  Back to results
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Basket
    #Next line is the proceed to checkout button
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain Element  continue
    sleep    20
    Close Browser

*** Keywords **
