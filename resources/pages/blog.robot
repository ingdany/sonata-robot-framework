*** Settings ***
Documentation   Test for Blog Page
Library     SeleniumLibrary
Variables   ../variables/components.py


#*** Test Cases ***
#BlogTest
#    open browser    ${SITE_URL}     ${BROWSER}
#    Open Blog Page
    #Open Twitter Login Window
    #Set Twitter UserName
    #Set Twitter Password
    #Log In and Tweet
#    Access to a Post
    #Scroll down over Post
    #close browser


*** Keywords ***
Open Blog Page
    [Documentation]     Blog Page
    [Arguments]     ${ENVIRONMENT}
    log to console      Open Blog Page
    go to   ${BLOG_URL}
    #maximize browser window
    sleep   5
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/blog/screenshot1.png

#Open Twitter Login Window
#    [Documentation]     With this keyword we are going to start process to share post in twitter.
#    log to console      Click twitter icon and share blog post. 
#    click element   ${BLOG_SHARETWITTER}
#    sleep   3
#    select window   title=Share a link on Twitter
#    capture page screenshot     ${BLOG_SCREENSHOT_PATH}/screenshot2.png

#Set Twitter UserName
#    log to console      Add Username
#    input text      ${TWITTER_USERNAME_INPUT}   ${TWITTER_USERNAME}
#    capture page screenshot     ${BLOG_SCREENSHOT_PATH}/screenshot3.png

#Set Twitter Password
#    log to console      Type Password
#    input text      ${TWITTER_PASSWORD_INPUT}     ${TWITTER_PASSWORD}
#    capture page screenshot     ${BLOG_SCREENSHOT_PATH}/screenshot4.png

#Log In and Tweet
#    log to console  Share Blog to Twitter
#    click element   ${TWITTER_LOGIN_BUTTON}
#    sleep   5
#    capture page screenshot     ${BLOG_SCREENSHOT_PATH}/screenshot5.png
#    click element   ${TWITTER_SUBMIT}

Access to a Post
    log to console  Access to a Post
    [Arguments]     ${ENVIRONMENT}
    select window   Staff Augmentation QA Testing UI UX Design | Sonata Services
    click element   ${BLOG_POST}
    sleep   5
    capture page screenshot     ${SCREENSHOT_PATH}/${ENVIRONMENT}/blog/screenshot6.png

#Scroll down over Post
#    log to console  Scroll down over this post
#    click element   ${BLOG_QUOTE}
#    capture page screenshot     ${BLOG_SCREENSHOT_PATH}/screenshot7.png