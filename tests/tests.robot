*** Settings ***
Library             AppiumLibrary
Resource            devData/keywords.robot

Suite Setup         Open Test Application
Suite Teardown      Close All Applications


*** Test Cases ***
Work with text field and click on button
    Element Visiable and Clickable    //android.widget.TextView[@content-desc="Views"]
    Element Visiable and Clickable    //android.widget.TextView[@content-desc="Auto Complete"]
    Element Visiable and Clickable    //android.widget.TextView[@content-desc="1. Screen Top"]
    Element Visiable and Send Keys    io.appium.android.apis:id/edit    Pakistan
    Element Visiable and Clickable    //android.widget.Button[@content-desc="Give me Focus"]
    Navigate Back    3

work with checkbox
    Element Visiable and Clickable    //android.widget.TextView[@content-desc="Preference"]
    Element Visiable and Clickable    //android.widget.TextView[@content-desc="9. Switch"]
    Element Visiable and Clickable    android:id/checkbox
    Navigate Back    2

lunching internet browser from app and search some thing
    Pass Execution    message
