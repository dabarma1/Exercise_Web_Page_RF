*** Settings ***
Library     Selenium2Library
Library     Collections
Library     String
Resource    Resources/PageObject/LoginUPO.robot
Resource    Resources/PageObject/JobTitleUPO.robot
Resource    Resources/PageObject/JobAddUPO.robot
*** Variables ***

*** Keywords ***
Open Browser and go to orangehrm
    [Documentation]
    open browser    https://opensource-demo.orangehrmlive.com/  Firefox
    sleep   3

Set up Add Job
    [Documentation]
    open browser    https://opensource-demo.orangehrmlive.com/  Firefox
    sleep   3
    LoginWF

LoginWF
    [Documentation]    Do Login
    Input user name in loggin page  Admin
    Input user password in loggin page  admin123
    Do login

Add Job WF
    [Documentation]    Add Job
    Click On Admin Section
    Click On Job Section
    Click On Job Title Section
    Click On Add Button
    Fill Title Job  QA Analyst
    Fill Description Job  Analize test Methodologies
    Click On Save Button



