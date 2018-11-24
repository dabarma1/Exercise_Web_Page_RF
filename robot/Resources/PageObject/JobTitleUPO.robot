*** Settings ***
Library     Selenium2Library
Library     Collections
Library     String
Resource    ../Locators/jobtitle_elements.robot

*** Variables ***

*** Keywords ***
Click On Add Button
    [Documentation]    This keyword Click on "Add" Button
    Assign Add Btn  ADD_BUTTON
    click button  ADD_BUTTON

Click On Delete Button
    [Documentation]    This keyword Click on "Delete" Button
    Assign Delete Btn  DELETE_BUTTON
    Wait Until Element Is Enabled  DELETE_BUTTON
    click button  DELETE_BUTTON
    sleep   5

Click On Job Section
    [Documentation]    This keyword Click on Job Section
    Assign Job Section Access  JOB_SECTION
    Wait Until Element Is Visible  JOB_SECTION
    double click element   JOB_SECTION

Click On Job Title Section
    [Documentation]    This keyword Click on Job Title Section
    Assign Job Title Access  JOB_TITLE_SECTION
    Wait Until Element Is Visible  JOB_TITLE_SECTION
    click element  JOB_TITLE_SECTION

Click On Admin Section
    [Documentation]    This keyword Click on Admin Section
    Assign Admin Access  JOB_ADMIN_SECTION
    Wait Until Element Is Visible  JOB_ADMIN_SECTION
    click element  JOB_ADMIN_SECTION

Click On Checkbox All Elements
    [Documentation]     This keyword Click On Checkbox to select all Jobs
    Assign All Table CheckBox  CHECKBOX_ALL_ELEMENTS
    wait until element is visible  CHECKBOX_ALL_ELEMENTS
    click element  CHECKBOX_ALL_ELEMENTS
    sleep   5

Number of Jobs
    [Documentation]     This keyword returns the number of jobs registered
    [Return]    {Number_Of_Jobs}
    Assign List Table Elements Number  JOBS_REGISTERED
    ${Number_Of_Jobs}    get webelements   JOBS_REGISTERED



