*** Settings ***
Documentation    Suite description
Library           Selenium2Library

*** Variables ***
${HOST}  https://psdtohtml.expert/
${BROWSER}  Chrome


*** Keywords ***
Prepare Test Environment
    Open Browser  ${HOST}  ${BROWSER}
   # Sleep   2
    #Set Selenium Speed  .4
