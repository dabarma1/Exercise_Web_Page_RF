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

Assign Job Management Access
    [Arguments]  ${job_title_section}
    assign id to element    //*[@id="menu_admin_viewJobTitleList"]    ${job_title_section}

Assign All Table CheckBox Job Management
    [Arguments]  ${All_table_CheckBox}
    assign id to element  //*[@id="ohrmList_chkSelectAll"]    ${All_table_CheckBox}

Assign Number of Jobs Job Management
    [Arguments]  ${List_table_Elements_number}
    Assign Id To Element  //*[@id="resultTable"]/tbody/tr/td[2]     ${List_table_Elements_number}

Assign Add Btn Job Management
    [Arguments]  ${add_btn}
    assign id to element   //*[@id="btnAdd"]     ${add_btn}

Assign Delete Btn Job Management
    [Arguments]  ${delete_btn}
    assign id to element   //*[@id="btnDelete"]  ${delete_btn}

Assign Get Title Job Management
    [Arguments]  ${title_job_get_text}
    assign id to element    //*[@id="resultTable"]/tbody/tr/td[2]/a     ${title_job_get_text}

Assign Get Description Job Management
    [Arguments]  ${description_job_get_text}
    assign id to element  //*[@id="resultTable"]/tbody/tr/td[3]   ${description_job_get_text}
