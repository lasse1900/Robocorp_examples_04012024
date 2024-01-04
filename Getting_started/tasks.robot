*** Settings ***
Documentation       Template robot main suite. 
Library    RPA.Browser.Selenium     auto_close=${FALSE}


*** Tasks ***
Open the website of the CRM application
    Open website

Add one customer to CRM system
    Add customer to CRM system

*** Keywords ***

Open website
    Open Available Browser    https://www.rpa-unlimited.com/youtube/robocorp-tutorial/

Add customer to CRM system
    Input Text    company-name        Toms Tect Academy
    Input Text    company-contact     Thomas Lamb
    Input Text    address             Hatanvainio 12 B 1
    Input Text    zipcode             01600    
    Input Text    city                Vantaa
    Input Text    country             Finland   
    Input Text    telephone           0500-23230890
    Input Text    email               thomas@hotmail.com 
    Submit Form



