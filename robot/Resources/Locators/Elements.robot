*** Settings ***
Library           Selenium2Library
Library           Collections
Library           String
*** Variables ***

*** Keywords ***

# Elements in Loggin Page #
Assign User Name Text to
    [Arguments]  ${user_name}
    assign id to element  //*[@id="txtUsername"]    ${user_name}
Assign User Password Tex to
     [Arguments]  ${user_password}
    assign id to element  //*[@id="txtPassword"]    ${user_password}
Assign Loggin Button to
    [Arguments]  ${loggin_btn}
    assign id to element  //*[@id="btnLogin"]   ${loggin_btn}