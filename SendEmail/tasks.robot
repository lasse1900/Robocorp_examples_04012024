*** Settings ***
Documentation       Template robot main suite.
Library        RPA.Email.ImapSmtp    smtp_server=smtp-mail.outlook.com    smtp_port=587    imap_server=outlook.office365.com
Task Setup    Authorize    account=%{EMAIL}    password=%{PASSWORD}

*** Variables ***


*** Tasks ***
Send Email
    Send Message    sender=%{EMAIL}    
    ...            recipients=lauri.kyttala@gmail.com  
    ...            subject=A message from my robot    
    ...            body=Message from your robot   
    ...            attachments=example.xlsx 


