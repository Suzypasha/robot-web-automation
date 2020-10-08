*** Settings ***
Library    SeleniumLibrary
Library    ../../ExternalKeywords/Locators.py
#Documentation    This is where the testcase documentation goes
#these are user defined keyword files
#Resource    ../../Resources/OpenMaximize.robot
#Resource    ../../Resources/GetWindowTitle.robot
Resource    ../../Resources/BeforeAfterTS.robot
#Resource    C:/python/robot-scripts/amazon/Resources/BeforeAfterTS.robot
Test Setup    Start Browser and Mazimize
Test Teardown    Get Window Title and Close
#Default Tags    Default

*** Variables ***
##Web URL
${url}    https://www.thetestingworld.com/testings
#Browser type
${browser}  IE

*** Test Cases ***
First Test Case TC_001
    [Tags]    Smoke
    ${usernam}=     Read Element Locator    Registration.username_textbox_name
    ${useremail}=     Read Element Locator    Registration.email_textbox_name
    ${userpass}=     Read Element Locator    Registration.password_textbox_name
    input text    ${usernam}    testing
    input text    ${useremail}    testing@testing.com
    input text    ${userpass}   123456x

#Next Test Case TC_001
#    [Tags]    Smoke    Regression
#    select radio button    add_type    office


*** Keywords ***
Read Element Locator
    [Arguments]     ${JsonPath}
    ${result}=    read_locator_from_json    ${JsonPath}
    [Return]    ${result}
    Log    ${result}