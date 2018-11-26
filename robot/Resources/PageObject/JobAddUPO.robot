*** Settings ***
Library     Selenium2Library
Library     Collections
Library     String
Resource    ../Locators/addJob_elements.robot

*** Variables ***

*** Keywords ***
Click On Save Button
    [Documentation]    This keyword Click on "Save" Button
    Assign Save Button Job  SAVE_BUTTON
    click button  SAVE_BUTTON

Click On Cancel Button
    [Documentation]    This keyword Click on "Cancel" Button
    Assign Cancel Button Job  CANCEL_BUTTON
    click button  CANCEL_BUTTON

Fill Title Job
    [Documentation]    This keyword Click on Job Section
    [Arguments]     ${title_job}
    Assign Title Job  JOB_TITLE
    Wait Until Element Is Visible  JOB_TITLE
    clear element text  JOB_TITLE
    input text  JOB_TITLE   ${title_job}

Fill Description Job
    [Documentation]    This keyword Click on Job Title Section
    [Arguments]     ${description_job}
    Assign Description Job  JOB_DESCRIPTION
    Wait Until Element Is Visible  JOB_DESCRIPTION
    clear element text  JOB_DESCRIPTION
    input text  JOB_DESCRIPTION     ${description_job}

Fill Note Job
    [Documentation]     This keyword Click On Checkbox to select all Jobs
    [Arguments]     ${note_job}
    Assign Note Job  JOB_NOTE
    Wait Until Element Is Visible  JOB_NOTE
    clear element text  JOB_NOTE
    input text   JOB_NOTE   ${note_job}

Get Title Job
    [Documentation]    This keyword Return Title Job
    Assign Title Job  JOB_TITLE_FILL
    Wait Until Element Is Visible  JOB_TITLE_FILL
    ${title_job}    get text    JOB_TITLE_FILL
    [Return]    ${title_job}

Get Description Job
    [Documentation]    This keyword Return Description Job
    Assign Title Job  JOB_DESCRIPTION
    Wait Until Element Is Visible  JOB_DESCRIPTION
    ${title_description}    get text    JOB_DESCRIPTION
    [Return]    ${title_description}