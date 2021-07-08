*** Settings ***
Library     DateTime
Library     SeleniumLibrary
Library     OperatingSystem
Library    String

*** Test Case ***
TC1 Table
    Open Browser    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html  browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    ${text}     Get Text    //div[@id='example_info']
    Log To Console    ${text}
    ${text}  Fetch From Right    ${text}  of
    Log To Console    ${text}
    FOR    ${i}    IN RANGE    1    21
        ${name}     Get Text    //table[@id='example']/tbody/tr[${i}]/td[2]
        IF    '${name}' == 'Brenden Wagner'
        Click Element    //table[@id='example']/tbody/tr[${i}]/td[1]
        END
    END