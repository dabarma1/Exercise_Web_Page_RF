*** Settings ***
Library     Selenium2Library
Library     Collections
Library     String
Resource    ../../Resources/PageObject/UserManagmentUPO.robot
Resource    ../../Resources/PageObject/AddUserUPO.robot
Resource    ../../Resources/Workflows.robot
*** Variables ***


*** Test Cases ***
Passwords do no match
    [Tags]  loggin
    #[Teardown]  close browser
    [Setup]  Open Browser and go to orangehrm
    Go to Add Usser
    Input Employee Name to Add User     Test
    Input User to Add User  Thinkwrap
    Input Password to Add User      Prueba1+
    Input Password Conf to Add User     Prueba1-
    Save New User
    page should contain     Passwords do not match
    location should be  https://opensource-demo.orangehrmlive.com/index.php/admin/saveSystemUser

Cancel user creation
    [Tags]  loggin
    #[Teardown]  close browser
    [Setup]  Open Browser and go to orangehrm
    Go to Add Usser
    Input Employee Name to Add User     Test
    Input User to Add User  Thinkwrap
    Input Password to Add User      Prueba1+
    Input Password Conf to Add User     Prueba1+
    Cancel Creation of New User
    location should be  https://opensource-demo.orangehrmlive.com/index.php/admin/viewSystemUsers?userId=

