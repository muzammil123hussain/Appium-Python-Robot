*** Settings ***
Documentation       Simple example using AppiumLibrary
Library             AppiumLibrary



*** Variables ***
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_APP}                  /home/muzammil/Documents/practice/Appium-Python-Robot/assets/ApiDemos-debug.apk
${ANDROID_PLATFORM_NAME}        Android
${ANDROID_PLATFORM_VERSION}     %{ANDROID_PLATFORM_VERSION=11}


*** Test Cases ***
Should send keys to search box and then check the value
    [Tags]    mobile
    Open Test Application
    Element Should Be Visible    android:id/text1
    Click Element    android:id/text1
    Log To Console    mobile test pass


*** Keywords ***
    
Open Test Application
    Open Application
    ...    http://127.0.0.1:4723/wd/hub
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    app=${ANDROID_APP}
