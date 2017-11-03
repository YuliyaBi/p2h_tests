*** Settings ***
Documentation     Suite description
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Services
    Wait Until Keyword Succeeds  3x  2000ms   Click Link  css=#menu-item-535 > a
    Page Should Contain  WordPress Development
    Wait Until Keyword Succeeds  3x  2000ms   Click Element  css=#page-wrapper > div:nth-child(4) > div.container > div > div > ul > li:nth-child(2) > a
    Page Should Contain Image  css=div:nth-child(1) > img
    Page Should Contain Image  css=div:nth-child(2) > img
    Page Should Contain Image  css=div:nth-child(3) > img
    Page Should Contain Image  css=div:nth-child(4) > img
    Wait Until Keyword Succeeds  3x  2000ms   Click Element  css=#page-wrapper > div:nth-child(4) > div.container > div > div > ul > li:nth-child(2) > a
    Page Should Contain  Wordpress Theme Customization

Blog
    Wait Until Keyword Succeeds  3x  2000ms   Click Link  css=#menu-item-191 > a
    Page Should Contain  Wordpress Theme Customization
    Wait Until Keyword Succeeds  3x  2000ms   Click Link  css=#post-447 > h2 > a
    Page Should Contain  Wordpress Plugin Development
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms   Click Link  css=#post-229 > h2 > a
    Page Should Contain  PSDTOHTML.EXPERT – A True Partner in Your Online Success
    Page Should Contain Image  css=#post-229 > img.aligncenter.wp-image-230
    Page Should Contain Image  css=#post-229 > img.aligncenter.wp-image-241


