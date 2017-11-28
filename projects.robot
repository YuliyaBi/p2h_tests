*** Settings ***
Documentation     Suite description
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Projects link
    Wait Until Keyword Succeeds  3x  2000ms  Click Link  css=#menu-item-489 > a
    Element Should Contain  css=div.projects__head > div > div > span > span  best projects
    #Apli Style
    Wait Until Keyword Succeeds  3x  2000ms  Click Element  css=div.slick-slide.slick-current.slick-active > a > div > img
    Page Should Contain  Alpi Style - furniture manufactory
    Click Link  css=#tab1 > div.projects__nav.clearfix > a:nth-child(2)
    Page Should Contain  HTML5
    Click Link  css=#tab1 > div.projects__nav.clearfix > a:nth-child(1)
    Page Should Contain Image  css=#tab1 > div.projects__wrap-info > div.projects__tab-info.project-tab-1.active > img
    #Crazy pig
    Click Element  css=div > div:nth-child(2) > a > div > img
    Page Should Contain  Crazy Pig - food delivery
    Click Link  css=#tab2 > div.projects__nav.clearfix > a:nth-child(2)
    Page Should Contain  Woocomerce
    Click Link  css=#tab2 > div.projects__nav.clearfix > a:nth-child(1)
    Page Should Contain Image  css=#tab2 > div.projects__wrap-info > div.projects__tab-info.project-tab-1.active > img
    #Panoramatravel
    Click Element  css=div > div:nth-child(3) > a > div > img
    Page Should Contain  Panoramatravel
    Click Link  css=#tab3 > div.projects__nav.clearfix > a:nth-child(2)
    Page Should Contain  MySQL
    Click Link  css=#tab3 > div.projects__nav.clearfix > a:nth-child(1)
    Page Should Contain Image  css=#tab3 > div.projects__wrap-info > div.projects__tab-info.project-tab-1.active > img
    #Respublica

    Click Element  css=div > div:nth-child(4) > a > div > img
    Page Should Contain  Respublica festival
    Click Link  css=#tab4 > div.projects__nav.clearfix > a:nth-child(2)
    Page Should Contain  CSS3
    Click Link  css=#tab4 > div.projects__nav.clearfix > a:nth-child(1)
    Page Should Contain Image  css=#tab4 > div.projects__wrap-info > div.projects__tab-info.project-tab-1.active > img
