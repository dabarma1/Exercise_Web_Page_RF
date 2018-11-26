*** Settings ***
Library     Selenium2Library
Library     Collections
Library     String
#Resource    ../Locators/userManagment_elements.robot
Resource    ../Locators/addUser_elements.robot
*** Variables ***

*** Keywords ***
Input Employee Name to Add User
    [Arguments]  ${name}
    Assign Employee Name Creation  EMPLOYEE_NAME
    input text  EMPLOYEE_NAME   ${name}

Input User to Add User
    [Arguments]  ${user}
    Assign User Name Creation  USER_NAME
    input text  USER_NAME   ${user}

Input Password to Add User
    [Arguments]  ${pass}
    Assign User Password Creation  USER_PASS
    input password  USER_PASS   ${pass}

Input Password Conf to Add User
    [Arguments]  ${pass}
    Assign User Password 2 Creation  USER_PASS_CON
    input password  USER_PASS_CON   ${pass}

Save New User
    Assign Save Btn Creation  SAVE
    click element  SAVE

Cancel Creation of New User
    Assign Cancel Btn Creation  CANCEL
    click element  CANCEL