*** Settings ***
Library    SeleniumLibrary
Documentation    This is where the testcase documentation goes
#these are user defined keyword files
Resource    ../../Resources/BeforeAfterTS.robot
Test Setup    Start Browser and Mazimize
Test Teardown    Get Window Title and Close
#Default Tags    Default
#Force Tags    ForcedTag

*** Variables ***
##Web URL
#${url}    https://www.thetestingworld.com/testings
##Browser type
#${browser}  IE

*** Test Cases ***
First Test Case TC_003
    [Tags]    Sanity
    input text    name:fld_username    testing
    input text    name:fld_email    testing@testing.com
    input text    name:fld_password    123456

Next Test Case TC_003
    [Tags]    Regression    Testing
    select radio button    add_type    office


