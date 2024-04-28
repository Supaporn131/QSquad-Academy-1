*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Register successfully
    Open Browser   https://vivan4962.softr.app/register  chrome
    Maximize Browser Window
    Input Text    id=user-accounts1-Name-1059950703  Touitest
    Input Text    id=user-accounts1-Email--1509232072    Touitestrobot2@gmail.com
    Input Text    id=user-accounts1-password--1423713697    121212
    Click Button    id=terms_and_privacy
    Click Element    class=css-1nddppv

#Add Task
#    Wait Until Element Is Visible    id=list1-visible-btn-_l5dvu9qso
#    Click Button    id=list1-visible-btn-_l5dvu9qso



