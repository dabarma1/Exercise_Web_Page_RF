*** Settings ***
Library           Selenium2Library
Library           Collections
Library           String
Resource          ../Locators/addNewJob_Section_elements.robot
Resource          ../Locators/userManagment_elements.robot

*** Variables ***

*** Keywords ***
Click On Save Button
    [Documentation]    This keyword Click on "Save" Button
    Assign Save Button Job    SAVE_BUTTON
    click button    SAVE_BUTTON

Click On Cancel Button
    [Documentation]    This keyword Click on "Cancel" Button
    Assign Cancel Button Job    CANCEL_BUTTON
    click button    CANCEL_BUTTON

Fill Title Job
    [Arguments]    ${title_job}
    [Documentation]    This keyword Click on Job Section
    Assign Title Job    JOB_TITLE
    Wait Until Element Is Visible    JOB_TITLE
    clear element text    JOB_TITLE
    input text    JOB_TITLE    ${title_job}

Fill Description Job
    [Arguments]    ${description_job}
    [Documentation]    This keyword Click on Job Title Section
    Assign Description Job    JOB_DESCRIPTION
    Wait Until Element Is Visible    JOB_DESCRIPTION
    clear element text    JOB_DESCRIPTION
    input text    JOB_DESCRIPTION    ${description_job}

Fill Note Job
    [Arguments]    ${note_job}
    [Documentation]    This keyword Click On Checkbox to select all Jobs
    Assign Note Job    JOB_NOTE
    Wait Until Element Is Visible    JOB_NOTE
    clear element text    JOB_NOTE
    input text    JOB_NOTE    ${note_job}
