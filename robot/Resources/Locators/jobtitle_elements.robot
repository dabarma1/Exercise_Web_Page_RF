*** Settings ***
Library           Selenium2Library
Library           Collections
Library           String
*** Variables ***

*** Keywords ***

# Elements in Job Title Page #
Assign Admin access
    [Arguments]  ${admin_access}
    assign id to element  //*[@id="menu_admin_viewAdminModule"]    ${admin_access}

Assign Job Section Access
    [Arguments]     ${job_section}
    assign id to element    //*[@id="menu_admin_Job"]     ${job_section}

Assign Job Title Access
    [Arguments]  ${job_title_section}
    assign id to element    //*[@id="menu_admin_viewJobTitleList"]    ${job_title_section}

Assign All Table CheckBox
    [Arguments]  ${All_table_CheckBox}
    assign id to element  //*[@id="ohrmList_chkSelectAll"]    ${All_table_CheckBox}

Assign List Table Elements Number
    [Arguments]  ${List_table_Elements_number}
    Assign Id To Element  //*[@id="resultTable"]//tbody/tr

Assign Add Btn
    [Arguments]  ${add_btn}
    assign id to element   //*[@id="btnAdd"]     ${add_btn}

Assign Delete Btn
    [Arguments]  ${delete_btn}
    assign id to element   //*[@id="btnDelete"]  ${delete_btn}
