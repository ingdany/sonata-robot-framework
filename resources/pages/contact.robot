*** Settings ***
Documentation   Test for Contact Us Form
Library     SeleniumLibrary
Variables   ../variables/components.py
#Library     DataDriver      ../../Data/ContactUs.csv

#Test Teardown   Close All Browsers
#Test Template   Submit Contacts from CSV file

#*** Test Cases ***
#Test Contact Us Form Using Records from CSV
#    [Template]  Submit Contacts from CSV file
#    [Teardown]  Close All Browsers

*** Keywords ***
Submit Contacts from CSV file
    [Arguments]     ${ENVIRONMENT}     ${NAME}     ${EMAIL_ADDRESS}    ${PHONE_NUMBER}     ${COMPANY}      ${MESSAGE}
    log to console  Starting test using: ${NAME}
    #Open Browser and Page
    Open Contact Window     ${ENVIRONMENT}
    Set Name    ${ENVIRONMENT}  ${NAME}
    Set Email Address   ${ENVIRONMENT}  ${EMAIL_ADDRESS}
    Set Phone Number    ${ENVIRONMENT}  ${PHONE_NUMBER}
    Set Company     ${ENVIRONMENT}  ${COMPANY}
    Set Message     ${ENVIRONMENT}  ${MESSAGE}

#Open Browser and Page
#    log to console  Open Browser and Page
#    open browser    ${SITE_URL}     ${BROWSER}
#    sleep   5    
#    maximize browser window

Open Contact Window
    log to console  Open Contact Form 
    [Arguments]     ${ENVIRONMENT}
    #go to   ${SITE_URL} 
    ${IS_MOBILE} =      Run Keyword And Return Status   Element Should Be Visible   ${CONTACT_HAMBURGER_MENU}
    Run Keyword If      ${IS_MOBILE}   click element  ${CONTACT_HAMBURGER_MENU}
    log to console  Click to Hamburger Menu  
    sleep   5
    click element   ${CONTACT_LINK}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/contact/screenshot1.png

Set Name
    [Arguments]     ${ENVIRONMENT}  ${NAME}
    log to console  Capture Name
    input text  ${CONTACT_NAME}     ${NAME}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/contact/screenshot2.png

Set Email Address
    [Arguments]     ${ENVIRONMENT}  ${EMAIL_ADDRESS}
    log to console  Capture Email Address
    input text  ${CONTACT_EMAIL_ADDRESS}    ${EMAIL_ADDRESS}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/contact/screenshot3.png

Set Phone Number
    [Arguments]     ${ENVIRONMENT}  ${PHONE_NUMBER}
    log to console  Capture Phone Number
    input text  ${CONTACT_PHONE_NUMBER}     ${PHONE_NUMBER}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/contact/screenshot4.png

Set Company
    [Arguments]     ${ENVIRONMENT}  ${COMPANY}
    log to console  Capture Company
    input text  ${CONTACT_COMPANY}     ${COMPANY}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/contact/screenshot5.png

Set Message
    [Arguments]     ${ENVIRONMENT}     ${MESSAGE}
    log to console  Capture Description
    input text  ${CONTACT_MESSAGE}     ${MESSAGE}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/contact/screenshot6.png

Submit Form
    [Arguments]     ${ENVIRONMENT}
    log to console  Submit Information
    click element   ${CONTACT_SUBMIT}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/contact/screenshot7.png