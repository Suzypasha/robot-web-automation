*** Settings ***
Documentation     A test suite with a single test for Login & Sign Up Forms
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
Login & Sign Up Forms test
    Open Browser    https://www.thetestingworld.com/testings/    ${BROWSER}
    Input Text    //input[@name="fld_username"]    robertjhall
    Input Text    //input[@name="fld_email"]    robertjhall67@gmail.com
    Input Text    //input[@name="phone"]    +32498419376
    Input Text    //input[@name="address"]    Nijvelsebaan 80
    Select From List By Value    //select[@name="country"]    21
    Input Text    //input[@name="zip"]    3090
    Input Text    //input[@name="fld_password"]    ***
    Input Text    //input[@name="fld_cpassword"]    ***
    #Click Link    xpath=(//a[@href="#"])[23]
    Click Element    //input[@name="add_type"]
    Select From List By Value    //select[@name="sex"]    1
    Select From List By Value    //select[@name="state"]    438
    Select From List By Value    //select[@name="city"]    8016
    Click Element    //div[@class="btn"]
    Close Browser