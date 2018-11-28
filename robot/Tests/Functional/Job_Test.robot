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
    Front Developer    Front Task
    Backend Developer    Backend Task
    [Teardown]    close browser

Delete Job to table
    [Tags]    JobSection
    [Setup]    Open Browser and go to orangehrm
    Loggin as Admin
    Add New Job    Recruiter    Manage people
    ${count}    Job Managemment Number of Jobs
    Job Management Click On QA Checkbox
    Job Management Click On Delete Button
    Click On OK Button Delete Job
    ${count_after_job_deleted}    Job Managemment Number of Jobs
    Should Be True    ${count}-1==${count_after_job_deleted}
    : FOR    ${i}    IN RANGE    1    ${count_after_job_deleted} + 1
    \    ${current_title_job}    Job Management Get Title Job    ${i}
    \    ${exit_for_loop}    Run Keyword And Return Status    should be equal    ${current_title_job}    Recruiter
    \    Exit for loop if    ${exit_for_loop}
    \    Run keyword if    ${count} == ${i} and ${exit_for_loop} == True    Fail    The job title has´nt been deleted
    [Teardown]    close browser

*** Keywords ***
Add Job To Table
    [Arguments]    ${job_title_expected}    ${job_description_expected}
    [Documentation]    Keyword to add job
    Job Management Click On Add Button
    Fill Title Job    ${job_title_expected}
    Fill Description Job    ${job_description_expected}
    Click On Save Button
    ${count}    Job Managemment Number of Jobs
    : FOR    ${i}    IN RANGE    1    ${count} + 1
    \    ${current_title_job}    Job Management Get Title Job    ${i}
    \    ${exit_for_loop}    Run Keyword And Return Status    should be equal    ${current_title_job}    ${job_title_expected}
    \    Exit for loop if    ${exit_for_loop}
    \    Run keyword if    ${count} == ${i} and ${exit_for_loop} == False    Fail    The job title not appear on the table
    : FOR    ${i}    IN RANGE    1    ${count} + 1
    \    ${current_title_description}    Job Management Get Description Job    ${i}
    \    ${exit_for_loop}    Run Keyword And Return Status    should be equal    ${current_title_description}    ${job_description_expected}
    \    Exit for loop if    ${exit_for_loop}
    \    Run keyword if    ${count} == ${i} and ${exit_for_loop} == False    Fail    The job description not appear on the table
