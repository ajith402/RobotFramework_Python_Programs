

*** Keywords ***
LaunchBrowser and Navigate to Website
    [Arguments]             ${Browser}      ${URL}
    Create Webdriver        ${Browser}      executable_path=${Path}
    Go to       ${URL}
    Maximize Browser Window


*** Variables ***
${Path}                              Driver/chromedriver.exe