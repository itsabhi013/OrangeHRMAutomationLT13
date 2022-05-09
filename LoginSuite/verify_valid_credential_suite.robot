* Settings *
Documentation     this suite will handle valid credential
...     test - TC_OH_2

Resource    ../Resource/CommonFunctionality.resource

Test Teardown   Close Browser


* Test Cases *
Valid Credential Test
   Append To Environment Variable    Path      ${EXECDIR}${/}driver
   Open Browser          browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://opensource-demo.orangehrmlive.com/
   Input Text    id=txtUsername    Admin
   Input Password    id=txtPassword    adjdnd
   Click Element    id=btnLogin
   Page Should Contain    My Info