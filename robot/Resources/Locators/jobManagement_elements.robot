*** Settings ***
Library           Selenium2Library
Library           Collections
Library           String

*** Variables ***

*** Keywords ***
Assign Admin access
    [Arguments]    ${admin_access}
    # Elements in Job Title Page #
    assign id to element    //*[@id="menu_admin_viewAdminModule"]    ${admin_access}

Assign Job Section Access
    [Arguments]    ${job_section}
    assign id to element    //*[@id="menu_admin_Job"]    ${job_section}

Assign Job Management Access
    [Arguments]    ${job_title_section}
    assign id to element    //*[@id="menu_admin_viewJobTitleList"]    ${job_title_section}

Assign QA Job CheckBox
    [Arguments]    ${CEO_Job_CheckBox}
    assign id to element    //*[@id="ohrmList_chkSelectRecord_11"]    ${CEO_Job_CheckBox}

Assign Number of Jobs Job Management
    [Arguments]    ${List_table_Elements_number}
    assign id to element    //*[@id="resultTable"]/tbody/tr/td[2]    ${List_table_Elements_number}

Assign Add Btn Job Management
    [Arguments]    ${add_btn}
    assign id to element    //*[@id="btnAdd"]    ${add_btn}

Assign Delete Btn Job Management
    [Arguments]    ${delete_btn}
    assign id to element    //*[@id="btnDelete"]    ${delete_btn}

Assign Get Title Job Management
    [Arguments]    ${title_job_get_text}
    assign id to element    //*[@id="resultTable"]/tbody/tr/td[2]/a    ${title_job_get_text}

Assign Get Description Job Management
    [Arguments]    ${description_job_get_text}
    assign id to element    //*[@id="resultTable"]/tbody/tr/td[3]    ${description_job_get_text}

Assign OK Button Delete Job
    [Arguments]    ${Ok_Button}
    assign id to element    //*[@id="dialogDeleteBtn"]    ${Ok_Button}

Assign Cancel Button Delete Job
    [Arguments]    ${Cancel_Button}
    assign id to element    //*[@class="btn reset"]    ${Cancel_Button}
