*** Settings ***
Resource    ../../Resources/Resources1.robot
*** Variables ***
*** Test Cases ***
Test Case in BDD Format
    Given Start Browser and Mazimize
    When Create Folder At Runtime    week    day
    Then Concatenate User Name and Password  Robert  Hall
