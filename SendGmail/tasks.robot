*** Settings ***
Library     RPA.Email.ImapSmtp   smtp_server=smtp.gmail.com  smtp_port=587
Task Setup    Authorize    account=%{EMAIL}    password=%{PASSWORD}

# https://robocorp.com/docs/libraries/rpa-framework/rpa-email-imapsmtp - Refer to code
# created app password to google account:
# https://support.google.com/accounts/answer/185833?visit_id=638399561172873576-1971216643&p=InvalidSecondFactor&rd=1#zippy=%2Cmiksi-saatat-tarvita-sovelluksen-salasanan


*** Variables ***
${GMAIL_ACCOUNT}        Lauri Kyttälä
${RECIPIENT_ADDRESS}    lauri.kyttala@hotmail.com 
${BODY_IMG1}            waves.png
${EMAIL_BODY}     <h1>Heading</h1><p>Status: <img src='waves.png' alt='waves image'/></p>

*** Tasks ***
# Sending email
#     Send Message  sender=${GMAIL_ACCOUNT}
#     ...           recipients=${RECIPIENT_ADDRESS}
#     ...           subject=Message from RPA Robot
#     ...           body=RPA Robot message body

Sending HTML Email With Image
    [Documentation]     Sending email with HTML content and attachment
    Send Message
    ...                 sender=${GMAIL_ACCOUNT}
    ...                 recipients=${RECIPIENT_ADDRESS}
    ...                 subject=HTML email with body image
    ...                 body=${EMAIL_BODY}
    ...                 html=${TRUE}
    ...                 images=${BODY_IMG1}
