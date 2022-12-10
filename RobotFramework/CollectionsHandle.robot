*** Settings ***
Documentation       Robot Framework Colelctions Handling

Library     Collections

*** Test Cases ***

Handle Collections
    Extract the Values from a List      ${list_City}


*** Keywords ***
Extract the Values from a List
    [Arguments]         ${input_List}

    Log to Console        ${input_List}
    ${first_List_Value}=          Get From List       ${input_List}        0
    Log to Console        First Value: ${first_List_Value}
    ${second_List_Value}=          Get From List       ${input_List}       1
    Log to Console        First Value: ${second_List_Value}


*** Variables ***
@{list_City}           Hyderabad         Banglore     Mumbai
