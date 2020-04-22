*** Settings ***
Library     SeleniumLibrary
Resource    pages${/}home.robot
Resource    pages${/}services.robot
Resource    pages${/}success_stories.robot
Resource    pages${/}careers.robot
Resource    pages${/}about_us.robot
Resource    pages${/}blog.robot
Resource    pages${/}contact.robot
Resource    pages${/}changedevice.robot
Variables   variables${/}components.py

*** Test Cases ***
Test Sonata Website in Desktop
    Open Browser    ${SITE_URL}     ${BROWSER}
    maximize browser window
    Open Home Page      ${DESKTOP} 
    Open Services Page  ${DESKTOP}
    Open Success Stories Page   ${DESKTOP}
    Go to Job Positions     ${DESKTOP}
    Share to Social Network    ${DESKTOP}
    Login Twitter       ${DESKTOP}     ${TWITTER_USERNAME}     ${TWITTER_PASSWORD} 
    Submit Tweet   ${DESKTOP}
    Open About Us Page  ${DESKTOP}
    Open Blog Page  ${DESKTOP}
    Access to a Post    ${DESKTOP}
    Submit Contacts from CSV file   ${DESKTOP}  ${NAME}     ${EMAIL_ADDRESS}    ${PHONE_NUMBER}     ${COMPANY}      ${MESSAGE}
    Close All Browsers

Test Sonata Website in Mobile Portrait
    Set Mobile Portrait Mode
    maximize browser window
    Goto    ${SITE_URL}
    Open Home Page      ${PORTRAIT}
    Open Services Page  ${PORTRAIT}
    Open Success Stories Page   ${PORTRAIT}
    Go to Job Positions    ${PORTRAIT} 
    #Share to Social Network    ${PORTRAIT}
    #Login Twitter       ${PORTRAIT}    ${TWITTER_USERNAME}     ${TWITTER_PASSWORD} 
    #Submit Tweet   ${PORTRAIT}
    Open About Us Page  ${PORTRAIT}
    Open Blog Page      ${PORTRAIT}
    Access to a Post    ${PORTRAIT}
    Submit Contacts from CSV file   ${PORTRAIT}  ${NAME}     ${EMAIL_ADDRESS}    ${PHONE_NUMBER}     ${COMPANY}      ${MESSAGE}
    #Sleep   10
    Close All Browsers

Test Sonata Website in Mobile Landscape
    Set Mobile Landscape Mode
    maximize browser window
    Goto    ${SITE_URL}
    Open Home Page      ${LANDSCAPE}
    Open Services Page  ${LANDSCAPE}
    Open Success Stories Page   ${LANDSCAPE}
    Go to Job Positions    ${LANDSCAPE}
    #Share to Social Network    ${LANDSCAPE}
    #Login Twitter       ${LANDSCAPE}   ${TWITTER_USERNAME}     ${TWITTER_PASSWORD} 
    #Submit Tweet   ${LANDSCAPE}
    Open About Us Page  ${LANDSCAPE}
    Open Blog Page      ${LANDSCAPE}
    Access to a Post    ${LANDSCAPE}
    Submit Contacts from CSV file   ${LANDSCAPE}     ${NAME}     ${EMAIL_ADDRESS}    ${PHONE_NUMBER}     ${COMPANY}      ${MESSAGE}
    #Sleep   10
    Close All Browsers