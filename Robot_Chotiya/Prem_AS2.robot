***Setting***
Library  SeleniumLibrary

***Variable***
${fill_name}  id=user-accounts1-Name-1059950703

***Test case ***
check Fill full name in eng
    Open Browser  https://vivan4962.softr.app/register  chrome
    Input Text  ${fill_name}  Chotiya
    Input Text  id=user-accounts1-Email--1509232072  chotiya97@gmail.com
    Input Text  id=user-accounts1-password--1423713697  prem1208
    Click Element  id=terms_and_privacy
    Click Button  class=css-1nddppv


check register fail
    Open Browser  https://vivan4962.softr.app/register  chrome
    Input Text  ${fill_name}  Chotiya
    Input Text  id=user-accounts1-Email--1509232072  chotiya97@gmail.com
    Input Text  id=user-accounts1-password--1423713697  999
    Click Element  id=terms_and_privacy
    Click Button  class=css-1nddppv
    Element Should Contain  class=form-error-text  Your password must contain at least 6 characters
    Sleep  2s