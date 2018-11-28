*** Settings ***
Library           Selenium2Library
Library           Collections
Library           String
Resource          ../Locators/jobManagement_elements.robot

*** Variables ***

*** Keywords ***
Job Management Click On Add Button
    [Documentation]    This keyword Click on "Add" Button
    Assign Add Btn Job Management    ADD_BUTTON
    click button    ADD_BUTTON
    sleep    1

Job Management Click On Delete Button
    [Documentation]    This keyword Click on "Delete" Button
    Assign Delete Btn Job Management    DELETE_BUTTON
    Wait Until Element Is Enabled    DELETE_BUTTON
    click button    DELETE_BUTTON

Click On Job Section
    [Documentation]    This keyword Click on Job Section
    Assign Job Section Access    JOB_SECTION
    Wait Until Element Is Visible    JOB_SECTION
    double click element    JOB_SECTION
    sleep    1

Click On Job Management Section
    [Documentation]    This keyword Click on Job Title Section
    Assign Job Management Access    JOB_TITLE_SECTION
    Wait Until Element Is Visible    JOB_TITLE_SECTION
    click element    JOB_TITLE_SECTION

Click On Admin Section
    [Documentation]    This keyword Click on Admin Section
    sleep   1
    Assign Admin access    JOB_ADMIN_SECTION
    Wait Until Element Is Visible    JOB_ADMIN_SECTION
    click element    JOB_ADMIN_SECTION

Job Management Click On QA Checkbox
    [Documentation]    This keyword Click On Checkbox to select all Jobs
    Assign QA Job CheckBox    CHECKBOX_ALL_ELEMENTS
    wait until element is visible    CHECKBOX_ALL_ELEMENTS
    click element    CHECKBOX_ALL_ELEMENTS

Job Managemment Number of Jobs
    [Documentation]    This keyword returns the number of jobs registered
    Assign Number of Jobs Job Management    JOBS_REGISTERED
    ${Number_Of_Jobs}    get matching xpath count    //*[@id="resultTable"]/tbody/tr/td[2]
    [Return]    ${Number_Of_Jobs}

Job Management Get Title Job
    [Arguments]    ${i}
    [Documentation]    This keyword Return Title Job
    Assign Get Title Job Management    JOB_TITLE_GET
    Wait Until Element Is Visible    JOB_TITLE_GET
    ${job_title}    get text    xpath=(//*[@id="resultTable"]/tbody/tr/td[2]/a)[${i}]
    [Return]    ${job_title}

Job Management Get Description Job
    [Arguments]    ${i}
    [Documentation]    This keyword Return Description Job
    Assign Get Description Job Management    JOB_DESCRIPTION_GET
    Wait Until Element Is Visible    JOB_DESCRIPTION_GET
    ${job_description}    get text    xpath=(//*[@id="resultTable"]/tbody/tr/td[3])[${i}]
    [Return]    ${job_description}

Click On Ok Button Delete Job
    Assign OK Button Delete Job    OK_BUTTON
    Wait Until Element Is Visible    OK_BUTTON
    click button    OK_BUTTON
    sleep    1

Click On Cancel Button Delete Job
    Assign Cancel Button Delete Job    CANCEL_BUTTON
    Wait Until Element Is Visible    CANCEL_BUTTON
    click button    CANCEL_BUTTON
    sleep    1
