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

Job Management Click On Delete Button
    [Documentation]    This keyword Click on "Delete" Button
    Assign Delete Btn Job Management    DELETE_BUTTON
    Wait Until Element Is Enabled    DELETE_BUTTON
    click button    DELETE_BUTTON
    sleep    5

Click On Job Section
    [Documentation]    This keyword Click on Job Section
    Assign Job Section Access    JOB_SECTION
    Wait Until Element Is Visible    JOB_SECTION
    double click element    JOB_SECTION

Click On Job Management Section
    [Documentation]    This keyword Click on Job Title Section
    Assign Job Management Access    JOB_TITLE_SECTION
    Wait Until Element Is Visible    JOB_TITLE_SECTION
    click element    JOB_TITLE_SECTION

Click On Admin Section
    [Documentation]    This keyword Click on Admin Section
    Assign Admin access    JOB_ADMIN_SECTION
    Wait Until Element Is Visible    JOB_ADMIN_SECTION
    click element    JOB_ADMIN_SECTION

Job Management Click On Checkbox All Elements
    [Documentation]    This keyword Click On Checkbox to select all Jobs
    Assign All Table CheckBox Job Management    CHECKBOX_ALL_ELEMENTS
    wait until element is visible    CHECKBOX_ALL_ELEMENTS
    click element    CHECKBOX_ALL_ELEMENTS
    sleep    5

Job Managemment Number of Jobs
    [Documentation]    This keyword returns the number of jobs registered
    Assign Number of Jobs Job Management    JOBS_REGISTERED
    ${Number_Of_Jobs}=    get matching xpath count    JOBS_REGISTERED
    [Return]    {Number_Of_Jobs}

Job Management Get Title Job
    [Arguments]    ${title_job_expected}
    [Documentation]    This keyword Return Title Job
    Assign Get Title Job Management    JOB_TITLE_GET
    Wait Until Element Is Visible    JOB_TITLE_GET
    ${job_title}=    get text    JOB_TITLE_GET
    [Return]    ${job_title}

Job Management Get Description Job
    [Documentation]    This keyword Return Description Job
    Assign Get Description Job Management    JOB_DESCRIPTION_GET
    Wait Until Element Is Visible    JOB_DESCRIPTION_GET
    ${job_description}=    get text    JOB_DESCRIPTION_GET
    [Return]    ${job_description}
