* Settings *
Documentation     this suite will handle valid credential
...     test - TC_OH_2

Resource    ../Resource/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser
Test Template       valid Credential Templete

Library     DataDriver      file=../test_data/orange_data.xlsx      sheet_name=Valid Credential


* Test Cases *
TC1

* Keywords *
valid Credential Templete
#    Input Text    id=txtUsername    Admin
#    Input Password    id=txtPassword    admin123
#    Click Element    id=btnLogin
#    Page Should Contain    My Info

    [Arguments]     ${username}     ${password}     ${expected_value}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Page Should Contain    ${expected_value}