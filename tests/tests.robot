*** Settings ***
Library             AppiumLibrary
Resource            devData/keywords.robot

Suite Setup         Open Test Application
Suite Teardown      Close All Applications


*** Test Cases ***
Should send keys to autocomplete box under view section and then click on button
    [Tags]    mobile
    Element Should Be Visible    //android.widget.TextView[@content-desc="Views"]
    Click Element    //android.widget.TextView[@content-desc="Views"]
    Element Should Be Visible    //android.widget.TextView[@content-desc="Auto Complete"]
    Click Element    //android.widget.TextView[@content-desc="Auto Complete"]
    Element Should Be Visible    //android.widget.TextView[@content-desc="1. Screen Top"]
    Click Element    //android.widget.TextView[@content-desc="1. Screen Top"]
    Element Should Be Visible    io.appium.android.apis:id/edit
    Input Text    io.appium.android.apis:id/edit   Pakistan
    Element Should Be Visible    //android.widget.Button[@content-desc="Give me Focus"]
    Click Element    //android.widget.Button[@content-desc="Give me Focus"]
