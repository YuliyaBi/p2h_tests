*** Settings ***
Documentation     Suite description
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Positive test. Successful submit of a popup
    Wait Until Keyword Succeeds  3x  2000ms   Click Element  css=span.btn-yellow.convert-info__btn.js-popup
    Radio Button Should Be set to   service  Fixed bid project
    Execute Javascript	$('.project-type__label:nth-child(2)').addClass('active'); $('.project-type__label:nth-child(1)').removeClass('active');
    Execute Javascript	$('.project-type__label:nth-child(3)').addClass('active'); $('.project-type__label:nth-child(2)').removeClass('active');
    Input Text  css=#username  Yuliya
    Input Text  css=#project-type > div:nth-child(6) > div > label:nth-child(2) > input  test_yuliyabiletskaya@gmail.com
    Input Text  css=#project-type > div:nth-child(6) > label > input  juliya_bi
    Input Text  css=label.clearfix.pop-start-project__wrap-textarea > textarea  23dew3ed444
    Wait Until Keyword Succeeds  3x  2000ms   Click Element  css=div.pop-start-project__submit-block.clearfix > input
    Page Should Contain  Your order get success
    Wait Until Keyword Succeeds  3x  3000ms   Click Element  css=#pop-successful > div.popup__terms__close > span

Negative test. Submit of empty Popup
    Wait Until Keyword Succeeds  3x  2000ms   Click Element  css=span.btn-yellow.convert-info__btn.js-popup
    Click Element  css=#project-type > div.pop-start-project__submit-block.clearfix > input
    Page Should Contain Element  css=#project-type > div:nth-child(6) > div > label:nth-child(2) > input

Negative test. Enter invalid data in Email fild
    Wait Until Keyword Succeeds  3x  2000ms   Click Element  css=span.btn-yellow.convert-info__btn.js-popup
    Input Text  css=#project-type > div:nth-child(6) > div > label:nth-child(2) > input  drexfer
    Click Element  css=#project-type > div.pop-start-project__submit-block.clearfix > input
    Element Should Contain  css=#email-error  Please enter a valid email address

Negative test. Delete text in input filds
    Wait Until Keyword Succeeds  3x  2000ms   Click Element  css=span.btn-yellow.convert-info__btn.js-popup
    Input Text  css=#project-type > div:nth-child(6) > div > label:nth-child(2) > input  drexfer
    Click Element  css=#project-type > div.pop-start-project__submit-block.clearfix > input
    Clear Element Text  css=#project-type > div:nth-child(6) > div > label:nth-child(2) > input
    Click Element  css=#project-type > div.pop-start-project__submit-block.clearfix > input
    Element Should Contain  css=#email-error  This field is required