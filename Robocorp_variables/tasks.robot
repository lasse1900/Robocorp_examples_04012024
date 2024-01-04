*** Settings ***
Documentation       Template robot main suite.

*** Variables ***
${myName}    Lasse
${year}      ${2023}
@{fruit}    apple    orange    banana yellow    # list
&{credentials}    username=Lasse    password=12345   # dictionary

*** Tasks ***
Log website url
    Log    %{WEBSITE_URL}

Log Variables
    ${myName}    Set Variable    My name is ${myName}
    Log    ${myName}
    ${divided_year}    Set Variable    ${year}
    ${divided_year}    Evaluate    ${year}/5
    Log    ${year}
    Log    ${divided_year}
    Log    ${fruit}[2]
    Log    ${credentials}[username]    
    Log    ${credentials}[password]



