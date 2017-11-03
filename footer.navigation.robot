*** Settings ***
Documentation     Suite description
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Footer navigation
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-449 > a
    Page Should Contain  WordPress Development
    Go back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-450 > a
    Page Should Contain  WooCommerce Optional Development Features
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-451 > a
    Page Should Contain  WooCommerce Development Features
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-452 > a
    Page Should Contain  PSD to WordPress Optional Feature List
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-453 > a
    Page Should Contain   PSD to WordPress
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-455 > a
    Page Should Contain  PSD to Responsive HTML Development Features
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-457 > a
    Page Should Contain  Parallax Development Features
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-458 > a
    Page Should Contain  PSD to Mobile Development Features
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-459 > a
    Page Should Contain  HTML5 Optional Development Features
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-459 > a
    Page Should Contain  HTML5 Development Features
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-461 > a
    Page Should Contain  PSD to HTML Optional Development Features
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-462 > a
    Page Should Contain  PSD to HTML Development Features
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-463 > a
    Page Should Contain  PSD to Email Development Features
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-383 > a
    Page Should Contain  Terms & Conditions
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-381 > a
    Page Should Contain  Non-disclosure
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-380 > a
    Page Should Contain  Privacy Policy
    Go Back
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-382 > a
    Page Should Contain   Money-back
    Go Back

