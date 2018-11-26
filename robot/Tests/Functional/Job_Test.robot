*** Settings ***
Library           Selenium2Library
Library           Collections
Library           String
Resource          ../../Resources/PageObject/LoginUPO.robot
Resource          ../../Resources/PageObject/JobManagementUPO.robot
Resource          ../../Resources/PageObject/addNewJobUPO.robot
Resource          ../../Resources/Workflows.robot

*** Variables ***
${URL_LOGIN}      https://opensource-demo.orangehrmlive.com/index.php/dashboard

*** Test Cases ***
Add Job
    [Tags]    JobSection
    [Setup]    Set up Add Job
    [Template]    Add Job To Table
    QA Analyst    QA Methodologies
    Front Developer     Front Task
    [Teardown]    close browser

Delete All Jobs to table
    [Tags]    JobSection
    [Setup]    Open Browser and go to orangehrm
    Loggin as Admin
    Add New Job    QA Analyst    QA Methodologies
    Job Management Click On Checkbox All Elements
    Job Management Click On Delete Button
    [Teardown]    close browser

*** Keywords ***
Add Job To Table
    [Arguments]    ${job_title}    ${job_description}
    [Documentation]    Keyword to add job
    Click On Job Section
    sleep    1
    Click On Job Management Section
    Job Management Click On Add Button
    Fill Title Job    ${job_title}
    Fill Description Job    ${job_description}
    Click On Save Button

