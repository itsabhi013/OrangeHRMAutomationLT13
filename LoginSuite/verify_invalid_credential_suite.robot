* Settings *

Documentation     this suite will handle invalid credential
...     test - TC_OH_2

Resource    ../Resource/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser

Test Template       Invalid Credential Template

* Test Cases *
TC1     john    john123     Invalid credentials
TC2     peter   peter123    Invalid credentials

*** Keywords ***
Invalid Credential Template
   [Arguments]  ${usernmae}  ${password}  ${expected_error}
   Input Text    id=txtUsername    ${usernmae}
   Input Password    id=txtPassword    ${password}
   Click Element    id=btnLogin
   Element Text Should Be    id=spanMessage    expected=${expected_error}