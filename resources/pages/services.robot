*** Settings ***
Documentation   Test for Services Page
Library     SeleniumLibrary
Variables   ../variables/components.py
#Resource    ${PROJECT_RES_PATH}\\resources\\Automation.robot

#*** Test Cases ***
#SonataWebsiteTest
#    open browser     ${SERVICES_URL}        ${BROWSER}
#    Open Services Page
#    close browser 

***Keywords***
Open Services Page
    [Arguments]     ${ENVIRONMENT}
    log to console  Open Services Page
    go to   ${SERVICES_URL}    
    #maximize browser window
    sleep   5
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/services_page/screenshot1.png
    log to console  Go to our services & expertise
    click element   ${SERVICES_OUR_SERVICES} 
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/services_page/screenshot2.png
    log to console  Contact us section 
    click element   ${SERVICES_CONTACT_US}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/services_page/screenshot3.png
    log to console   End Services Page