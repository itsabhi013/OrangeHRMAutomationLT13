* Settings *

Documentation     this suite will handle invalid credential
...     test - TC_OH_2

Resource    ../Resource/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser


* Test Cases *
Invalid Credential Test
   Input Text    id=txtUsername    John
   Input Password    id=txtPassword    john123
   Click Element    id=btnLogin
   Element Text Should Be    is=spanMessage    expected=Invalid