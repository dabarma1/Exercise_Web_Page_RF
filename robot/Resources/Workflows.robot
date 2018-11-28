*** Settings ***
Library     Selenium2Library
Library     Collections
Library     String
Resource    PageObject/LoginUPO.robot
Resource    PageObject/JobManagementUPO.robot
Resource    PageObject/addNewJobUPO.robot

*** Variables ***

*** Keywords ***
Open Browser and go to orangehrm
    [Documentation]
    open browser    https://opensource-demo.orangehrmlive.com/  firefox
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

Set up Add Job
    [Documentation]
    Open Browser and go to orangehrm
    Loggin as Admin
    Click On Admin Section
    Click On Job Section
    Click On Job Management Section




Add New Job
    [Documentation]     Add New Job
    [Arguments]     ${job_title}    ${job_description}
    Click On Admin Section
    Click On Job Section
    Click On Job Management Section
    Job Management Click On Add Button
    Fill Title Job    ${job_title}
    Fill Description Job    ${job_description}
    Click On Save Button
