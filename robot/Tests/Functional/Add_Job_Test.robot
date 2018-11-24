*** Settings ***
Library     Selenium2Library
Library     Collections
Library     String
Resource    ../../Resources/PageObject/LoginUPO.robot
Resource    ../../Resources/PageObject/JobTitleUPO.robot
Resource    ../../Resources/PageObject/JobAddUPO.robot
Resource    ../../Resources/Workflows.robot
*** Variables ***
${URL_LOGIN}              https://opensource-demo.orangehrmlive.com/index.php/dashboard


*** Test Cases ***
Add Job to table
    [Tags]  JobSection
    [Teardown]  close browser
    [Setup]  Open Browser and go to orangehrm
    Input user name in loggin page  Admin
    Input user password in loggin page  admin123
    Do login
    location should be  ${URL_LOGIN}
    Click On Admin Section
    Click On Job Section
    Click On Job Title Section
    Click On Add Button
    Fill Title Job  QA Analyst
    Fill Description Job  Analize test Methodologies
    Click On Save Button

Delete Job to table
    [Tags]  JobSection
    [Teardown]  close browser
    [Setup]  Open Browser and go to orangehrm
    LoginWF
    Add Job WF
    Click On Checkbox All Elements
    Click On Delete Button

