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

Check Title Job
    [Documentation]    This keyword Return Title Job
    [Arguments]     ${title_job_expected}
    Assign Title Job Get Text   JOB_TITLE_GET
    ${count}=    Get Matching Xpath Count    JOB_TITLE_GET
    ${names}=    Create List
    :FOR    ${i}    IN RANGE    1    ${count} + 1
    \    ${title_job} =    Get Text    xpath=(JOB_TITLE_GET)[${i}]
    \    log to console  ${title_job}
    \    ${exit_for_loop} =  should be equal     ${title_job}   ${title_job_expected}
    \    continue for loop if   ${exit_for_loop}


Get Description Job
    [Documentation]    This keyword Return Description Job
    Assign Description Job Get Text  JOB_DESCRIPTION_GET
    Wait Until Element Is Visible  JOB_DESCRIPTION_GET
    ${title_description}    get text    JOB_DESCRIPTION_GET
    [Return]    ${title_description}