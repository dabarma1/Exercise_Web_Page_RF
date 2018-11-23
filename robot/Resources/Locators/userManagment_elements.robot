*** Settings ***
Library           Selenium2Library
Library           Collections
Library           String
*** Variables ***

*** Keywords ***

# Elements in User Managment Page #
Assign User Name to search
    [Arguments]  ${user_name}
    assign id to element  //*[@id="searchSystemUser_userName"]    ${user_name}

Assign User Type to search
    [Arguments]  ${user_type}
    assign id to element    //*[@id="searchSystemUser_userType"]    ${user_type}

Assign Employee Name to search
    [Arguments]  ${employee_name}
    assign id to element   //*[@id="searchSystemUser_employeeName_empName"] ${employee_name}

Assign User Status to search
    [Arguments]  ${user_status}
    assign id to element   //*[@id="searchSystemUser_status"]   ${user_status}

Assign Search Btn
    [Arguments]  ${search_btn}
    assign id to element   //*[@id="searchBtn"]     ${search_btn}

Assign Reset Btn
    [Arguments]  ${reset_btn}
    assign id to element   //*[@id="resetBtn"]  ${reset_btn}

Assign Add Btn
    [Arguments]  ${add_btn}
    assign id to element   //*[@id="btnAdd"]    ${add_btn}

Assign Delete Btn
    [Arguments]  ${delete_btn}
    assign id to element       //*[@id="btnDelete"]     ${delete_btn}