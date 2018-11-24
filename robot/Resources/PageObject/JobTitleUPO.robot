*** Settings ***
Library     Selenium2Library
Library     Collections
Library     String
Resource    ../Locators/jobtitle_elements.robot

*** Variables ***

*** Keywords ***
Click On Add Button
    [Documentation]    This keyword Click on "Add" Button
    [Arguments]
    Assign Add Btn  ADD_BUTTON
    click button  ADD_BUTTON

Click On Delete Button
    [Documentation]    This keyword Click on "Delete" Button
    [Arguments]
    Assign Delete Btn  DELETE_BUTTON
    click button  DELETE_BUTTON