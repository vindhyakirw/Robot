*** Settings ***
Library     DateTime
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Case ***
TC1 Multiple Tabs
    Open Browser    url=https://www.db4free.net/    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    //b[contains(text(),'phpMy')]
    Switch Window   New
    Select From List By Label    id=sel-lang    English (United Kingdom)
    Input Text    input_username    admin
    Input Password    input_password    pass
    Click Element    input_go
    ${alert}    Get Text    //div[@role='alert']/following::div[1]
    Log To Console    ${alert}