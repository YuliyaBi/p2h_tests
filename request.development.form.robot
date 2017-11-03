*** Settings ***
Documentation     Suite description
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Positive test. Successful submit of request form
    Wait Until Keyword Succeeds  3x  4000ms   Click Link  css=#menu-item-92 > a
    Page Should Contain  Quick way to get your PSD converted is put your mail here.
    Input Text  css=input.portfolio__input.validate   test_yuliyabiletskaya@gmail.com
    Wait Until Keyword Succeeds  3x  2000ms   Click Button  css=input.portfolio__submit
    Wait Until Keyword Succeeds  3x  4000ms   Page Should Contain  Thank you!
    Wait Until Keyword Succeeds  3x  4000ms   Element Should Contain  css=#portfolio > div > div > span  We will contact you
    ${thank_you_val}=  Get Value  css=input.portfolio__submit
    Wait Until Keyword Succeeds  3x  4000ms  Should Be Equal  ${thank_you_val}  Thank you!

Negative test. Submit of empty form
    Wait Until Keyword Succeeds  3x  4000ms   Click Link  css=#menu-item-92 > a
    Page Should Contain  Quick way to get your PSD converted is put your mail here.
    Wait Until Keyword Succeeds  3x  4000ms   Click Button  css=input.portfolio__submit
    Page Should Contain Element  css=input.portfolio__input.validate.red_input

Negative test. Enter invalid data in Email fild
    Wait Until Keyword Succeeds  3x  4000ms   Click Link  css=#menu-item-92 > a
    Page Should Contain  Quick way to get your PSD converted is put your mail here.
    Input Text  css=input.portfolio__input.validate  adfsgf
    Wait Until Keyword Succeeds  3x  4000ms   Click Button  css=input.portfolio__submit
    Element Should Contain  css=#email-error  Please enter a valid email address

Negative test. Delete text in input fild
    Wait Until Keyword Succeeds  3x  4000ms   Click Link  css=#menu-item-92 > a
    Page Should Contain  Quick way to get your PSD converted is put your mail here.
    Input Text  css=input.portfolio__input.validate  adfsgf
    Wait Until Keyword Succeeds  3x  4000ms   Click Button  css=input.portfolio__submit
    Clear Element Text  css=input.portfolio__input.validate
    Wait Until Keyword Succeeds  3x  4000ms   Click Button  css=input.portfolio__submit
    Element Should Contain  css=#email-error  This field is required

