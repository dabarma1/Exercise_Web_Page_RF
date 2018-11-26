*** Settings ***
Library           Selenium2Library
Library           Collections
Library           String
*** Variables ***

*** Keywords ***

# Elements in Job Add Page #
Assign Title Job
    [Arguments]  ${title_job}
    assign id to element    //*[@id="jobTitle_jobTitle"]    ${title_job}

Assign Description Job
    [Arguments]  ${description_job}
    assign id to element    //*[@id="jobTitle_jobDescription"]   ${description_job}

Assign Note Job
    [Arguments]  ${Insert_Note}
    assign id to element  //*[@id="jobTitle_note"]    ${Insert_Note}

Assign Save Button Job
    [Arguments]  ${save_button}
    Assign Id To Element  //*[@id="btnSave"]    ${save_button}

Assign Cancel Button Job
    [Arguments]  ${cancel_btn}
    assign id to element   //*[@id="btnCancel"]    ${cancel_btn}

