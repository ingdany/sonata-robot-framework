*** Settings ***
Documentation   Test for Success Stories Page
Library     SeleniumLibrary
Variables   ../variables/components.py 
#Resource    ${PROJECT_RES_PATH}\\resources\\Automation.robot

#*** Test Cases ***
#SonataWebSiteTest
#    open browser    ${SUCCESS_STORIES_URL}  ${BROWSER}   
#    Open Success Stories Page
#    close browser

***Keywords***
Open Success Stories Page
    [Arguments]     ${ENVIRONMENT}
    log to console  Open Success Stories Page
    go to   ${SUCCESS_STORIES_URL}
    #maximize browser window
    sleep   10
    log to console  Cisco Success Story
    click element       ${SUCCESS_STORIES_CISCO_BANNER}
    sleep   5
    log to console  IBM Success Story
    click element       ${SUCCESS_STORIES_IBM_BANNER}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/success_stories/screenshot2.png
    sleep   5
    log to console  Fox Success Story
    click element       ${SUCCESS_STORIES_FOX_BANNER}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/success_stories/screenshot3.png
    sleep   5
    log to console  Mobi Tv Success Story
    click element       ${SUCCESS_STORIES_MOBITV_BANNER}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/success_stories/screenshot4.png
    sleep   5
    log to console  Taylor Made Success Story
    click element       ${SUCCESS_STORIES_TAYLORMADE_BANNER}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/success_stories/screenshot5.png
    sleep   5
    #log to console  PRA Health Sciences Success Story
    #click element       ${SUCCESS_STORIES_PRA_HEALTH_SCIENCES_BANNER}
    #capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/success_stories/screenshot6.png
    log to console  End Success Stories Page