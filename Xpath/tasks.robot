*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Browser.Selenium    auto_close=${False}

# https://www.rpa-unlimited.com/robocorp-rpa-beginners-course/chapter2-web-automation/ - webform used here
Resource    ../Loops/tasks.robot

*** Tasks ***
Fill in the webform
    Open the browser
    Fill in the form and submit

*** Keywords ***
Open the Browser
    Open Available Browser    https://www.rpa-unlimited.com/robocorp-rpa-beginners-course/chapter2-web-automation/

Fill in the form and submit
    Input Text    xpath://input[@name="firstname"]                  Lasse
    Input Text    xpath://input[starts-with(@id,"ln-")]             Halonen
    Select Radio Button    gridRadios    option2
    Input Text    xpath://div[@id="address"]//following-sibling::input        Mannerheimintie 10
    # Input Text    xpath://div[3]//input[1]           Mannerheimintie  # also valid
    Input Text    xpath://label[text()="Zipcode"]//following-sibling::input   01200
    # Input Text    xpath://div[4]//input[1]            01200 
    Input Text    xpath://div[@class="city"]/input[@type="text"]      Helsinki
    # Input Text    xpath://div[@class='city']//input[@type='text']    Helsinki
    Select From List By Index    xpath://select[@id='country']    2
    # Select From List By Value    country    FI
    Click Element    xpath://button[@type="submit"]
    # Click Button    xpath://button[@name="submit"]



   
