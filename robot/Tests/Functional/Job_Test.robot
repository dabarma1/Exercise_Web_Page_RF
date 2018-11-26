*** Settings ***
Library           Selenium2Library
Library           Collections
Library           String
Resource          ../../Resources/PageObject/LoginUPO.robot
Resource          ../../Resources/PageObject/JobTitleUPO.robot
Resource          ../../Resources/PageObject/JobAddUPO.robot
Resource          ../../Resources/Workflows.robot

*** Variables ***
${URL_LOGIN}      https://opensource-demo.orangehrmlive.com/index.php/dashboard

*** Test Cases ***
Add Job to table
    [Tags]    JobSection
    [Setup]    Set up Add Job
    [Template]    Add Job To Table
    QA Analyst    QA Methodologies
    Front-End Developer    Develop tasks
    [Teardown]    close browser

Delete All Jobs to table
    [Tags]    JobSection
    [Setup]    Open Browser and go to orangehrm
    LoginWF
    Add Job WF
    Job Title Page Click On Checkbox All Elements
    Job Title Page Click On Delete Button
    [Teardown]    close browser

*** Keywords ***
Add Job To Table
    [Arguments]    ${job_title}    ${job_description}
    [Documentation]    Keyword to add job
    Click On Admin Section
    Click On Job Section
    sleep   1
    Click On Job Title Section
    Job Title Page Click On Add Button
    Fill Title Job    ${job_title}
    Fill Description Job    ${job_description}
    Click On Save Button
    Check Title Job     QA Analyst
