*** Settings ***
Documentation   Test for Home Page
Library     SeleniumLibrary
Variables   ../variables/components.py

#*** Test Cases ***
#HomeTest
#    open browser     ${SITE_URL}        ${BROWSER}
#    Open Home Page
#    close browser       

***Keywords***
Open Home Page
    [Arguments]     ${ENVIRONMENT}
    log to console  Start Home Page
    #maximize browser window    
    sleep   5
    click element   ${HOME_COOKIE_USE}
    log to console      First Header
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot1.png
    sleep   5
    log to console      Second Header
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot2.png
    sleep   5
    log to console      Third Header
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot3.png
    sleep   5
    log to console      Fourth Header
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot4.png
    click element        ${HOME_ACCELERATE_GROWTH}
    sleep   1  
    log to console      We helps accelerate your growth
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot5.png
    click element       ${HOME_SERVICES_EXPERTISE}
    sleep   1
    log to console      Our Services & Expertise
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot6.png
    click element       ${HOME_BRANDS}
    sleep   1
    log to console      Brands section
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot7.png
    log to console      Demantec IBM Success Story
    click element       ${HOME_DEMANTEC}
    sleep   1
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot8.png
    wait until element is visible       ${HOME_SUCCESS_STORY_DEMANTEC}    
    click element       ${HOME_SUCCESS_STORY_DEMANTEC}
    sleep   3
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot9.png
    go to    ${SITE_URL}
    sleep   3
    log to console      Taylor Made Success Story Page
    click element       ${HOME_TAYLORMEADE}
    sleep   1
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot10.png
    click element       ${HOME_SUCCESS_STORY_TAYLORMEADE}
    sleep   3
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot11.png
    go to   ${SITE_URL}
    sleep   3
    log to console      Iron Port Cisco Success Story
    click element       ${HOME_IRONPORT}
    sleep   1
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot12.png
    click element       ${HOME_SUCCESS_STORY_IRONPORT}
    sleep   3
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot13.png
    go to   ${SITE_URL}
    sleep   3
    log to console      Footer
    click element       ${HOME_FOOTER}
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/home/screenshot14.png 
    log to console      End Home Page