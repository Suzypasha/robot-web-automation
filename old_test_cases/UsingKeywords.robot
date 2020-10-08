*** Settings ***
Library    SeleniumLibrary
Documentation    This is where the testcase documentation goes
#these are user defined keyword files
Resource    ../Resources/OpenMaximizeKWArg.robot
Resource    ../Resources/EnterLogonDetails.robot
Resource    ../Resources/GetWindowTitle.robot

*** Variables ***
#Web URL
${url1}    https://www.thetestingworld.com/testings
#Browser type
${browser1}  Chrome
${browser2}  Firefox
${browser3}  IE
#Logon details
${Uname}    testing
${Email}    testing@testing.com
${Pword}    testing123

*** Test Cases ***
Using keywords test
    [Documentation]    This test case tests the logon functionality of the application and aso checks the correct page is opened
    [Timeout]    10s    Failed to execute Using keywords test
#user defined keyword to open and maximise browser
    Start Browser and Mazimize    ${url1}    ${browser3}
#Get and return title of current window
    ${Result}=    Get Window Title
#user defined keyword to enter logon details- note using returned value from Get Window Title as username
    Enter Logon Details    ${Result}    ${Email}    ${Pword}


