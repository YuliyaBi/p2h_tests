*** Settings ***
Documentation     Suite description
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Top navigation test
    Wait Until Keyword Succeeds  3x  2000ms  Page Should Contain Element  css=span.header__logo__text
    Element Should Contain   css=span.convert-info__title   Convert Your
    Wait Until Keyword Succeeds  3x  2000ms  Click Link   css=#menu-item-91 > a
    Element Should Contain  css=#howitworks   How It Works
    Click Link  css=#menu-item-92 > a
    Element Should Contain  css=#portfolio  Get HTML Done!
    Click Link  css=#menu-item-93 > a
    Element Should Contain  css=#thech-spec  Technical Specification
    Click Link  css=#menu-item-96 > a
    Element Should Contain   css=#contacts  Get in touch with us!
    Click Link   css=#menu-item-489 > a
    Element Should Contain  css=#page-body > div.projects > div.projects__head   best projects
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms   Click Link  css=#menu-item-535 > a
    Element Should Contain  css=#page-wrapper > div:nth-child(4) > div.projects__head  Services
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms   Click Link  css=#menu-item-191 > a
    Element Should Contain  css=#page-wrapper > div:nth-child(4) > div.projects__head   Blog
    Go Back
