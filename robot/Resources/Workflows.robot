*** Settings ***
Library     Selenium2Library
Library     Collections
Library     String
Resource    PageObject/LoginUPO.robot
*** Variables ***

*** Keywords ***
Open Browser and go to orangehrm
    [Documentation]
    open browser    https://opensource-demo.orangehrmlive.com/  Chrome
    sleep   3
Loggin as Admin
    [Documentation]
    Input user name in loggin page  Admin
    Input user password in loggin page  admin123
    Do login

Go to Add Usser
    [Documentation]
    Loggin as Admin
    Go to   https://opensource-demo.orangehrmlive.com/index.php/admin/saveSystemUser
