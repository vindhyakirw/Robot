*** Settings ***
Library     DateTime
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Case ***
TC1
    Append To Environment Variable    Path  C:\\Robot
    Open Browser    browser=gc
    Set Selenium Implicit Wait    30s
    Maximize Browser Window
    Go To    https://www.redbus.in/
    Click Element    id=signin-block
    Click Element    id=hc
    Select Frame    //iframe[@class='modalIframe']
    Input Text    //input[@id='mobileNoInp']    9089898899
    Close Browser

TC2
    Append To Environment Variable    Path  C:\\Robot
    Open Browser    browser=gc
    Set Selenium Implicit Wait    30s
    Maximize Browser Window
    Go To    https://www.pepperfry.com/
    Input Text    search    bedsheet   
    Click Element    searchButton
    Set Selenium Implicit Wait    50s
    #Select Checkbox    label[for='brandsnameSleep_Dove']
    Click Element    //div[@id='p_1_1_1740979']//a[contains(text(),'Add To Cart')]
    Close Browser
