*** Settings ***
Library     AppiumLibrary
Resource    variables.robot


*** Keywords ***
Open Test Application
    Open Application
    ...    http://127.0.0.1:4723/wd/hub
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    app=${ANDROID_APP}

Navigate Back
    [Arguments]    ${counter}
    ${x}=    Set Variable    ${0}
    WHILE    ${x} < ${counter}
        Go Back
        ${x}=    Evaluate    ${x} + 1
    END

Element Visiable and Clickable
    [Arguments]    ${locator}
    Element Should Be Visible    ${locator}
    Click Element    ${locator}

Element Visiable and Send Keys
    [Arguments]    ${locator}    ${text}
    Element Should Be Visible    ${locator}
    Input Text    ${locator}    ${text}
