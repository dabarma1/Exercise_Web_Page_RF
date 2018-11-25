*** Settings ***
Library           Selenium2Library
Library           Collections
Library           String
*** Variables ***

*** Keywords ***

# Elements in Add Users Page #
Assign User User Role Creation
    [Arguments]  ${user_role}
    assign id to element  //*[@id="systemUser_userType"]    ${user_role}
Assign Employee Name Creation
     [Arguments]  ${employee_name}
    assign id to element  //*[@id="systemUser_employeeName_empName"]    ${employee_name}
Assign User Name Creation
    [Arguments]  ${user_name}
    assign id to element  //*[@id="systemUser_userName"]   ${user_name}
Assign User User Status Creation
    [Arguments]  ${user_status}
    assign id to element  //*[@id="systemUser_status"]    ${user_status}
Assign User Password Creation
     [Arguments]  ${user_password}
    assign id to element  //*[@id="systemUser_password"]    ${user_password}
Assign User Password 2 Creation
    [Arguments]  ${confirm_password}
    assign id to element  //*[@id="systemUser_confirmPassword"]   ${confirm_password}
Assign Save Btn Creation
     [Arguments]  ${save_btn}
    assign id to element  //*[@id="btnSave"]    ${save_btn}
Assign Cancel Btn Creation
    [Arguments]  ${cancel_btn}
    assign id to element  //*[@id="btnCancel"]   ${cancel_btn}
