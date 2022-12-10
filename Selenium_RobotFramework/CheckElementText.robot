*** Settings ***
Documentation       Check Element Text
Library             SeleniumLibrary
Test Setup          Launch Browser and Navigate to Website
Test Teardown       Close Browser


*** Test Cases ***

Validate Element Text
    Check and Validate the Heading

*** Keywords ***
Launch Browser and Navigate to Website
    Open Browser        ${URL}      ${Browser}          executable_path=${Path}


Check and Validate the Heading
    Element Text Should Be      //h1[@class='learntocodeh1']            Learn to Code

*** Variables ***
${URL}              https://www.w3schools.com
${Browser}          Chrome
${Path}                              Driver/chromedriver.exe
