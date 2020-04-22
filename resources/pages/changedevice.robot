*** Settings ***
Library     SeleniumLibrary

#Test Teardown       Close All Browsers

#*** Test Cases ***
#ChangeDevice
#    Specifying Individual Device Attributes

*** Keywords ***
#Specifying a Known Mobile Device
#    ${mobile emulation}=    Create Dictionary    deviceName=Google Nexus 5
#    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
#    Call Method    ${chrome options}    add_experimental_option    mobileEmulation    ${mobile emulation}
#    Create Webdriver    Chrome    chrome_options=${chrome options}
#    Goto    https://stackoverflow.com
#    Sleep    10 secs

Set Mobile Portrait Mode
    ${DEVICE_METRICS}=    Create Dictionary    width=${360}    height=${640}    pixelRatio=${3.0}    userAgent=Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19
    Change to Mobile Device     ${DEVICE_METRICS}

Set Mobile Landscape Mode
    ${DEVICE_METRICS}=    Create Dictionary    width=${823}    height=${411}    pixelRatio=${3.0}    userAgent=Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19
    Change to Mobile Device     ${DEVICE_METRICS}

Change to Mobile Device
    [Arguments]     ${DEVICE_METRICS}
    ${MOBILE_EMULATION}=    Create Dictionary    deviceMetrics=${DEVICE_METRICS}
    ${CHROME_OPTIONS}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${CHROME_OPTIONS}    add_experimental_option    mobileEmulation    ${MOBILE_EMULATION}
    Create Webdriver    Chrome    chrome_options=${CHROME_OPTIONS}
    #Goto    https://sonataservices.com
    #Sleep    10 secs