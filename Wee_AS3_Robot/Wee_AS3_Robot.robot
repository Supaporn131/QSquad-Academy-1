*** Settings ***
Library    SeleniumLibrary
Suite Setup    Run Keywords
...    Set Selenium Timeout    30s
...    AND    Set timestamp
...    AND    Open website in browser

*** Variables ***
${url}    https://vivan4962.softr.app
${browser}    chrome
${css_register}    class=css-pohhr0
${css_fullname}    id=user-accounts1-Name-1059950703
${css_emailregister}    id=user-accounts1-Email--1509232072
${css_password}    id=user-accounts1-password--1423713697
${css_terms}    id=terms_and_privacy
${css_emailsignin}    id=user-accounts1-email--1479679400
${css_signin}    class=css-18lc33r
${css_title}    id=Title
${css_description}    id=Description
${css_state}    xpath=//div[@id="State"]
${css_priority}    xpath=//div[@id="Priority"]
${css_severity}    xpath=//div[@id="Severity"]
${css_startdate}    xpath=//input[@id="Start date"]
${css_enddate}    xpath=//input[@id="End date"]

*** Keywords ***
Set timestamp
    ${timestamp}=    Get Time    epoch
    Set Global Variable    ${timestamp}

Open website in browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Click Register button
    Wait Until Element Is Visible    ${css_register}
    Click Element    ${css_register}

Display Register page
    Wait Until Element Is Visible    xpath=//h2[text()="Register"]

Fill in Full Name "${name}"
    Wait Until Element Is Visible    ${css_fullname}
    Input Text    ${css_fullname}    ${name}

Fill in Email Register "${email}"
    Wait Until Element Is Visible    ${css_emailregister}
    Input Text    ${css_emailregister}    ${email}

Fill in Password "${password}"
    Wait Until Element Is Visible    ${css_password}
    Input Text    ${css_password}    ${password}

Check I agree checkbox
    Wait Until Element Is Visible    ${css_terms}
    Click Element    ${css_terms}

Click Submit Register button
    Wait Until Element Is Visible    class=css-1nddppv
    Click Element    class=css-1nddppv

Display My Todo List page
    Wait Until Element Is Visible    xpath=//h2[text()="My Todo List"]

Register with all required field
    Click Register button
    Display Register page
    Fill in Full Name "Test"
    Fill in Email Register "test${timestamp}@gmail.com"
    Fill in Password "password"
    Check I agree checkbox
    Click Submit Register button
    Display My Todo List page

Click Add task button
    Wait Until Element Is Visible    class=css-1hyugmu
    Click Element    class=css-1hyugmu

Display Add new task modal
    Wait Until Element Is Visible    xpath=//div[contains(@class,"css-hf1f5m") and text()="Add new task"]

Fill in Title "${title}"
    Wait Until Element Is Visible    ${css_title}
    Input Text    ${css_title}    ${title}

Fill in Description "${description}"
    Wait Until Element Is Visible    ${css_description}
    Input Text    ${css_description}    ${description}

Select State "${state}"
    Wait Until Element Is Visible    ${css_state}
    Click Element    ${css_state}
    Wait Until Element Is Visible    xpath=//li[@data-value="${state}"]
    Click Element    xpath=//li[@data-value="${state}"]

Select Priority "${priority}"
    Wait Until Element Is Visible    ${css_priority}
    Click Element    ${css_priority}
    Wait Until Element Is Visible    xpath=//li[@data-value="${priority}"]
    Click Element    xpath=//li[@data-value="${priority}"]

Select Severity "${severity}"
    Wait Until Element Is Visible    ${css_severity}
    Click Element    ${css_severity}
    Wait Until Element Is Visible    xpath=//li[@data-value="${severity}"]
    Click Element    xpath=//li[@data-value="${severity}"]

Select Start date "${date}"
    Wait Until Element Is Visible    ${css_startdate}
    Click Element    ${css_startdate}
    ${day}=    Evaluate    "${date}".split("/")[0]
    Wait Until Element Is Visible    xpath=//span[@class="rdrDayNumber"]/span[text()="${day}"]
    Click Element    xpath=//span[@class="rdrDayNumber"]/span[text()="${day}"]

Select End date "${date}"
    Wait Until Element Is Visible    ${css_enddate}
    Click Element    ${css_enddate}
    ${day}=    Evaluate    "${date}".split("/")[0]
    Wait Until Element Is Visible    xpath=//span[@class="rdrDayNumber"]/span[text()="${day}"]
    Click Element    xpath=//span[@class="rdrDayNumber"]/span[text()="${day}"]

Click Add button
    Wait Until Element Is Visible    class=css-19axder
    Click Element    class=css-19axder

Display task "${title}" with Description "${description}"
    Wait Until Element Is Visible    xpath=//div[contains(@class,"list-item-wrapper") and .//h2[text()="${title}"]]/div[.//p[text()="Description"]]//p[text()="${description}"]

Display task "${title}" with State "${state}"
    Wait Until Element Is Visible    xpath=//div[contains(@class,"list-item-wrapper") and .//h2[text()="${title}"]]/div[.//p[text()="State"]]//span[text()="${state}"]

Display task "${title}" with Priority "${priority}"
    Wait Until Element Is Visible    xpath=//div[contains(@class,"list-item-wrapper") and .//h2[text()="${title}"]]/div[.//p[text()="Priority"]]//span[text()="${priority}"]

Display task "${title}" with Severity "${severity}"
    Wait Until Element Is Visible    xpath=//div[contains(@class,"list-item-wrapper") and .//h2[text()="${title}"]]/div[.//p[text()="Severity"]]//span[text()="${severity}"]

*** Test Cases ***
Register with all required field
    Click Register button
    Display Register page
    Fill in Full Name "Test"
    Fill in Email Register "test${timestamp}@gmail.com"
    Fill in Password "password"
    Check I agree checkbox
    Click Submit Register button
    Display My Todo List page

Add new task with all fields
    Register with all required field
    Click Add task button
    Display Add new task modal
    Fill in Title "task${timestamp}"
    Fill in Description "This is description"
    Select State "Todo"    
    Select Priority "High"    
    Select Severity "Medium"    
    Select Start date "1/4/2024"   
    Select End date "9/4/2024"  
    Click Add button
    Display My Todo List page
    Display task "task${timestamp}" with Description "This is description"
    Display task "task${timestamp}" with State "Todo"
    Display task "task${timestamp}" with Priority "High"
    Display task "task${timestamp}" with Severity "Medium"