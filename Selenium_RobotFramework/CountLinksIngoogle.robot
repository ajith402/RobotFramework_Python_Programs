*** Settings ***
Documentation           Count Links In Google
Library                 SeleniumLibrary
Test Setup              LaunchBrowser and Navigate to Website       ${Browser}   ${URL}
Test Teardown           Close Browser
Resource                ${EXECDIR}/Utilities/ApplicationLaunch.robot



*** Test Cases ***

Count Links On Google Page
    Get the Title of Google Page
    Search for Text and Click on Submit Button
    Count the Links on Search Results


*** Keywords ***

Get the Title of Google Page
    ${title}=       Get title
    Log to console       title: ${title}

    Title Should Be        ${expecte_Title}


Search for Text and Click on Submit Button
    Wait until element is visible           ${Google_Search_Box}        20s
    Set Focus to element                    ${Google_Search_Box}
    Click element                           ${Google_Search_Box}
    Input Text              ${Google_Search_Box}            ${Search_Text}

#    Click element           ${Google_Submit_Button}
    Press Keys      None        ESC
#    Press Keys      ${Google_Search_Box}        ENTER
    Press Keys      None        ENTER
    Wait until element is visible       ${Google_Search_Results_Tab}    20s


Count the Links on Search Results
    ${Count}=       get element count       Tag:A

    Log to console      Count: ${Count}


*** Variables ***
${Browser}         Chrome
${URL}                  https://google.com
${expecte_Title}           Google
${Google_Search_Box}    //input[@name='q']
${Search_Text}          Selenium
${Google_Submit_Button}         //input[@name='btnI']
${Google_Search_Results_Tab}       //div[@id='extabar']