*** Settings ***
Library        SeleniumLibrary
Resource        ../keywords/RegisterKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
As a user, I want to Register success with valid credential
    When user Register to future skill platform with ${email} and ${firstName} and ${lastName} and ${phoneNumber} and ${phoneNumber} and ${newPassword} and ${confirmPassword}
    Then future skill should display home page and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"









