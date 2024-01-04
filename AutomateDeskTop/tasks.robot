*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Windows

*** Variables ***


*** Tasks ***
Add customer to CRM system
    Windows Run        MyCRM.exe 
    Control Window     My CRM (Sample App)
    Send Keys          id:textBoxPeopleFirstName    Emma
    Send Keys          id:textBoxPeopleLastName     Bun
    Click              id:radioButtonFemale
    Select             id:comboBoxPeopleAddressState    WA
    Click              id:checkBox1
    Click              name:Other
    Click              id:button1
    Click              id:2
    Click              name:People 
    Click              name:File
    Click              name:Exit
    