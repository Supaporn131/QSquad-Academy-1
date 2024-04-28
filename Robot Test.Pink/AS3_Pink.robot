*** Settings ***
Library  SeleniumLibrary  
*** Keywords ***
Open Website  
    Open browser  https://vivan4962.softr.app/  chrome
    Maximize Browser window
    Wait Until Element Is Visible  class=css-pohhr0

Click Register button
    Wait Until Element Is Visible  class=css-pohhr0
    Click Element  class=css-pohhr0
    Wait Until Page Contains  Register
    Wait Until Element Is Visible  id=terms_and_privacy
Fill Fullname field
    Wait Until Element Is Visible  id=user-accounts1-Name-1059950703
    Input Text  id=user-accounts1-Name-1059950703  Pinkpitchayaaa

Fill Email field
    Input Text  id=user-accounts1-Email--1509232072  pin.kfortest1@gmail.com

Fill Password field
     Input Text  id=user-accounts1-password--1423713697  Pink2024

Select checkbox
    Click Element  id=terms_and_privacy

Click Register Button Below
    Click Element  class=css-1nddppv



*** Test Cases ***
Scenario: Register Successfully
    Open Website
    Click Register button
    Fill Fullname field
    Fill Email field
    Fill Password field
    Select checkbox
    Click Register Button Below
    sleep  5s