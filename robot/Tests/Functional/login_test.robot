*** Settings ***
Library     Selenium2Library
Library     Collections
Library     String
Resource    ../../Resources/PageObject/LoginUPO.robot
Resource    ../../Resources/Workflows.robot
Library             json
Library             RequestsLibrary

*** Variables ***
${URL_LOGIN}              https://opensource-demo.orangehrmlive.com/index.php/dashboard
${LOG_BAD_CREDENTIALS}     Credenciales invalidad
${EMPTY_USER_MSG}          Nombre de usuario no puede estar vacío
${EMPTY_PASSWORD_MSG}      La contraseña no puede estar vacía


*** Test Cases ***
Correct Login
    [Tags]  loggin
    [Teardown]  close browser
    [Setup]  Open Browser and go to orangehrm
    Input user name in loggin page  Admin
    Input user password in loggin page  admin123
    Do login
    location should be  ${URL_LOGIN}

Empty User Name
    [Tags]  loggin
    [Teardown]  close browser
    [Setup]  Open Browser and go to orangehrm
    Input user password in loggin page  admin123
    Do login
    page should contain  Username cannot be empty

Empty Password
    [Tags]  loggin
    [Teardown]  close browser
    [Setup]  Open Browser and go to orangehrm
    Input user name in loggin page  Admin
    Do login
    page should contain  Password cannot be empty

Ivalid Username
    [Tags]  loggin
    [Teardown]  close browser
    [Setup]  Open Browser and go to orangehrm
    Input user name in loggin page  Admina
    Input user password in loggin page  admin123
    Do login
    page should contain  Invalid credentials

Invalid Password
    [Tags]  loggin
    [Teardown]  close browser
    [Setup]  Open Browser and go to orangehrm
    Input user name in loggin page  Admin
    Input user password in loggin page  admin1234
    Do login
    page should contain  Invalid credentials

Login BE
    [Tags]  loggin      BE
    ${data}=    create dictionary  txtUsername=Admin    txtPassword=admin123
    create session      orange    https://opensource-demo.orangehrmlive.com
    post request    orange      /index.php/auth/validateCredentials       ${data}

Check user Admin BE
    [Tags]      BE
    ${data}=    create dictionary  txtUsername=Admin    txtPassword=admin123
    create session      orange    https://opensource-demo.orangehrmlive.com
    post request    orange      /index.php/auth/validateCredentials       ${data}
    ${result}       get request         orange      /index.php/admin/viewSystemUsers
    should be equal as strings  ${result}     <Response [200]>
    @{response}       get request         orange      /index.php/admin/viewSystemUsers
    @{response}  convert to string   @{response}
    Should contain      ${result2}      Admin





