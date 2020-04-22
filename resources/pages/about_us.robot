*** Settings ***
Documentation   Test for About Us Page
Library     SeleniumLibrary
Variables   ../variables/components.py

#*** Test Cases ***
#AboutUsTest
#    open browser    ${SITE_URL}     ${BROWSER}
#    Open About Us Page
#    close browser


*** Keywords ***
Open About Us Page
    [Documentation]     About Us Page
    [Arguments]     ${ENVIRONMENT}
    log to console      Start About Us Page
    go to   ${ABOUT_US_URL}
    #maximize browser window
    sleep   3
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/about_us/screenshot1.png
    click element   ${ABOUT_US_WANNA_GO_BIG}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/about_us/screenshot2.png
    click element   ${ABOUT_US_SECURE_FACILITIES}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/about_us/screenshot3.png
    click element   ${ABOUT_US_SEAMLESS_SUPPORT}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/about_us/screenshot4.png
    click element   ${ABOUT_US_FOOTER}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/about_us/screenshot5.png
    log to console  End About Us Page



