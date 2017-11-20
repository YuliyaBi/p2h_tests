*** Settings ***
Documentation     Suite description
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Positive test. Successful submit of a Contact Form
    Wait Until Keyword Succeeds  3x  2000ms   Click Link  css=#menu-item-96 > a
    Element Should Contain   css=#contacts > div > div > span  Get in touch with us!
    awrrtyfd Input Text  css=#contact_form > label:nth-child(1) > input   Yuliya
    11qqqaaa  Input Text  ggg css=#contact_form > label:nth-child(2) > input  test_yuliyabiletskaya@gmail.com
    Input Text  css=#contact_form > label.label.label-message > textarea  Hello!
    Click Button  css=#contact_form > input
    Wait Until Keyword Succeeds  3x  5000ms  Page Should Contain  Thank you!
    Wait Until Keyword Succeeds  3x  5000ms  Element Should Contain  css=#thanks-message > span  We will contact you.
    ${thank_you_val}=  Get Value  css=#contact_form > input
    Wait Until Keyword Succeeds  3x  5000ms  Should Be Equal  ${thank_you_val}  Thank you!


#Negative test. Submit of empty Contact Form
#    Wait Until Keyword Succeeds  3x  2000ms   Click Link  css=#menu-item-96 > a
#    Element Should Contain   css=#contacts > div > div > span  Get in touch with us!
#    Wait Until Keyword Succeeds  3x  2000ms   Click Button  css=#contact_form > input
#    Page Should Contain Element  css=#contact_form > label:nth-child(2) > input
#
#Negative test. Submit of empty Email fild only
#    Wait Until Keyword Succeeds  3x  2000ms   Click Link  css=#menu-item-96 > a
#    Element Should Contain   css=#contacts > div > div > span  Get in touch with us!
#    Input Text  css=#contact_form > label:nth-child(1) > input   Yuliya
#    Input Text  css=#contact_form > label.label.label-message > textarea  Hello!
#    Wait Until Keyword Succeeds  3x  2000ms   Click Button  css=#contact_form > input
#    Page Should Contain Element  css=#contact_form > label:nth-child(2) > input
#
#Negative test. Enter invalid data in Email fild
#    Wait Until Keyword Succeeds  3x  2000ms   Click Link  css=#menu-item-96 > a
#    Element Should Contain   css=#contacts > div > div > span  Get in touch with us!
#    Input Text  css=#contact_form > label:nth-child(2) > input  aaa
#    Wait Until Keyword Succeeds  3x  2000ms   Click Button  css=#contact_form > input
#    Element Should Contain   css=#email-error   Please enter a valid email address
#
#
#Negative test. Delete text in input filds
#    Wait Until Keyword Succeeds  3x  2000ms   Click Link  css=#menu-item-96 > a
#    Element Should Contain   css=#contacts > div > div > span  Get in touch with us!
#    Input Text  css=#contact_form > label:nth-child(1) > input   a
#    Input Text  css=#contact_form > label:nth-child(2) > input  a
#    Input Text  css=#contact_form > label.label.label-message > textarea  a
#    Press Key  css=#contact_form > label:nth-child(1) > input  \\08
#    Press Key  css=#contact_form > label:nth-child(2) > input  \\08
#    Press Key  css=#contact_form > label.label.label-message > textarea  \\08
#    Element Should Contain  css=#name-error  This field is required
#    Element Should Contain  css=#email-error  This field is required
#    Element Should Contain  css=#text-error   This field is required
