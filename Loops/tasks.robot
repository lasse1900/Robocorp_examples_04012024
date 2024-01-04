*** Settings ***
Documentation       Template robot main suite.
# website: https://www.rpa-unlimited.com/uipath-rpa-beginners-course/chapter5-excel-and-loops/index.php

Library    RPA.Browser.Selenium    auto_close=${False}

*** Variables ***
@{students}=    Jan    peter    Thomas
${studentnumber}    ${101}

*** Tasks ***
Open Browser and add students
    Open Browser
    Add students to form

*** Keywords ***
Open browser
    Open Available Browser    https://www.rpa-unlimited.com/uipath-rpa-beginners-course/chapter5-excel-and-loops/index.php 

Add students to form
    FOR    ${student}    IN    @{students}
        Input Text    studentnr    ${studentnumber}
        Input Text    name    ${student}
        Input Text    cohort    2023
        Input Text    course    Mathematics
        Click Element    xpath://button[@type="submit"]
        ${studentnumber}    Set Variable    ${studentnumber + 1}
        
    END

