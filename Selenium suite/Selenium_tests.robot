*** Settings ***
Library     DateTime
Library     SeleniumLibrary
Library     OperatingSystem
*** Test Case ***
TC1 Get Datetime
    ${currentdate}          Get Current Date
    Log To Console  ${currentdate}

TC2 Print Name
    ${name1}    Set Variable    vin
    Log To Console    ${name1}
    Set Local Variable    ${name2}  bal
    Log To Console    ${name2}

TC3 Open Login
    Append To Environment Variable    Path  C:\\Robot
    Open Browser    url=http://demo.openemr.io/b/openemr/interface/login/login.php?site=default   browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    authUser    admin
    Input Password    clearPass    pass
    Select From List By Value    languageChoice    18
    Click Button    //button[@class="btn btn-login btn-lg"]
    ${name}     Get Title
    Log    ${name}
    Log To Console    ${name}
    Mouse Over    //div[@class="menuLabel dropdown-toggle oe-dropdown-toggle"]
    Click Element    //div[text()="Patients"]
    Select Frame    fin
    Click Element   fin
    Unselect Frame
    Select Frame    pat
    Click Element   pat