*** Settings ***
Documentation  Libraries go here
Library  Selenium2Library
Library  String
*** Variables ***
${Link}  https://sparkdigital.com
${Browser}  gc
*** Test Cases ***
Test case_001_Get thirth title from Clients page
    [Documentation]  The test case verify and return the tirth elemnt within the Clients page-Client List
    Open Browser  ${Link}  ${Browser}
    Click Link  Xpath = //a[.='Clients']
    Mouse Over  css= div.view-display-id-embed_1 li:nth-of-type(3)
    ${textelement}=  Get text   css=div.view-display-id-embed_1 li:nth-of-type(3)
    @{text}=  Split String  ${textelement}
    log to console  @{text}
    Close Browser


