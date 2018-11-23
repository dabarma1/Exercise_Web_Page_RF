*** Settings ***
Library     Selenium2Library
Library     Collections
Library     String
Resource    ../Locators/Elements.robot

*** Variables ***

*** Keywords ***
Input user name in loggin page
    [Documentation]    This keyword will include the provide username in the thext fiel user name
    [Arguments]     ${user_name}
    Assign User Name Text to   USER_NAME
    clear element text  USER_NAME
    input text  USER_NAME   ${user_name}

Input user password in loggin page
    [Documentation]    This keyword will include the provide password in the text field password
    [Arguments]     ${user_password}
    Assign User Password Tex to  USER_PASSWORD
    clear element text  USER_PASSWORD
    input password      USER_PASSWORD   ${user_password}

Do login
    [Documentation]    This tkeyword will locate the button sig in and it will be click on this
    Assign Loggin Button to  LOGIN_BTN
    click element  LOGIN_BTN
    sleep  3