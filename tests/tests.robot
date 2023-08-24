*** Settings ***
Library             AppiumLibrary
Resource            devData/keywords.robot

Suite Setup         Open Test Application
Suite Teardown      Close All Applications


*** Test Cases ***

Work with text field and click on button
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
    Navigate Back    3


work with checkbox
    Element Should Be Visible    //android.widget.TextView[@content-desc="Preference"]
    Click Element    //android.widget.TextView[@content-desc="Preference"]
    Element Should Be Visible    //android.widget.TextView[@content-desc="9. Switch"]
    Click Element    //android.widget.TextView[@content-desc="9. Switch"]
    Element Should Be Visible    android:id/checkbox
    Click Element    android:id/checkbox
    Navigate Back    2


lunching internet browser from app and search some thing
    Pass Execution    message

