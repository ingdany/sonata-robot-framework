*** Settings ***
Documentation   Test for Careers Page
Library     SeleniumLibrary
Library     Collections
Variables   ../variables/components.py

#*** Test Cases ***
#CareersPage
#    open browser     ${SITE_URL}        ${BROWSER}
#    Go to Job Positions
#    Share to Social Network
#    Login Twitter       ${TWITTER_USERNAME}     ${TWITTER_PASSWORD} 
#    Submit Tweet  
    #close browser 

*** Keywords ***
Go To Job Positions
    [Arguments]     ${ENVIRONMENT}
    log to console  Open Careers Page
    go to       ${CAREERS_URL}
    sleep   5
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/careers/screenshot1.png
    click element       ${CAREERS_SEND_US_RESUME}
    sleep   5
    log to console  Go to Overview Positions Available
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/careers/screenshot2.png
    sleep   5
    click element       ${CAREERS_FIRST_JOB_POSITION}
    wait until element is visible       ${CAREERS_JOB_POSITION_PANEL}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/careers/screenshot3.png

Share to Social Network
    [Arguments]     ${ENVIRONMENT}
    log to console  Share to Social Network
    wait until element is visible   ${CAREERS_SHARE}
    click element   ${CAREERS_SHARE}
    wait until element is visible   ${CAREERS_TWITTER}
    click element   ${CAREERS_TWITTER}    
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/careers/screenshot4.png
    log to console  Open Twitter Login Dialog 
    sleep   5   
    select window   title=Share a link on Twitter
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/careers/screenshot5.png

Login Twitter
    [Documentation]     Log to Twitter
    [Arguments]     ${ENVIRONMENT}      ${TWITTER_USERNAME}     ${TWITTER_PASSWORD}
    log to console  Type User and Password  
    Input Text      ${TWITTER_USERNAME_INPUT}     ${TWITTER_USERNAME}
    Input Text      ${TWITTER_PASSWORD_INPUT}     ${TWITTER_PASSWORD}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/careers/screenshot6.png

Submit Tweet
    [Documentation]     Login and Post Tweet message
    [Arguments]     ${ENVIRONMENT}
    log to console     Login to Twitter and Post Tweet
    click element   ${TWITTER_LOGIN_BUTTON}
    sleep   5
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/careers/screenshot7.png
    click element   ${TWITTER_SUBMIT}   
    sleep   5
    ${WindowTitles}     Get Window Titles
    #log to console      ${WindowTitles}
    ${WindowToOpen}=    Get From List   ${WindowTitles}     -1
    #Select Window       Title=${WindowToOpen}
    switch browser      1
    click element   ${CAREERS_CLOSE}
    log to console      Link has been shared to Twitter
    log to console      End Careers Page