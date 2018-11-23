*** Settings ***
Library     Selenium2Library
Library     Collections
Library     String
Resource    Resources/PageObject/LoginUPO.robot
*** Variables ***

*** Keywords ***
Open Browser and go to orangehrm
    [Documentation]
    open browser    https://opensource-demo.orangehrmlive.com/  Chrome
    sleep   3

