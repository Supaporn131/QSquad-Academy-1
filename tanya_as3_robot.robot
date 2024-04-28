*** Settings ***
Library  SeleniumLibrary

*** Keywords ***


Tap Register button 
    Click Element  class=css-1nddppv

Fill Email field
    Input Text  id=user-accounts1-Email--1509232072  ty2@gmail.com

Fill Password field
    Input Text  id=user-accounts1-password--1423713697  123abc

Click checkbox
    Select Checkbox  id=terms_and_privacy


Fill Fullname field 
     Input Text  id=user-accounts1-Name-1059950703  ty  

*** Test Cases ***
Scenario: Register
    Open Browser  https://vivan4962.softr.app/register  chrome
    Fill Fullname field 
    Fill Email field
    Fill Password field
    Click checkbox
    Tap Register button




