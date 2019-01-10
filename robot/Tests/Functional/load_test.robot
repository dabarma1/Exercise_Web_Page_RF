*** Settings ***
Library  SeleniumLibrary
Suite Setup     Open browser    ${URL}   ${BROWSER}
Suite Teardown  Close All Browsers

*** Variables ***
${URL}          http://blazedemo.com/
${BROWSER}      Chrome

*** Test Cases ***
The user can search for flights
    [Tags]	   search_flights
    Select From List By Value   xpath://select[@name='fromPort']  Paris
    Select From List by Value   xpath://select[@name='toPort']    London
    Click Button    css:input[type='submit']
    @{flights}=  Get WebElements    css:table[class='table']>tbody tr
    Should Not Be Empty     ${flights}