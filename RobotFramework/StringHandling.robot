*** Settings ***
Documentation           Robot Framework String Handling

Library     String


*** Test Cases ***
String Handling Using Robot Framework
    Split String with Robto Framework           ${String_Name}




*** Keywords ***
Split String with Robto Framework
    [Arguments]         ${string_Val}

    Log to Console          Before String Value: ${string_Val}

    @{Splitted_String}=         Split String  ${string_Val}
    Log to Console      After Splitting:
    Log to console        ${Splitted_String[0]}
    Log to console        ${Splitted_String[1]}
    Log to console        ${Splitted_String[2]}



*** Variables ***
${String_Name}          Ajith Kumar Honey
