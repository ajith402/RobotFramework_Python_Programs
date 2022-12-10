*** Settings ***
Documentation       Robot Framework Colelctions Handling

Library     Collections

*** Test Cases ***

Handle Collections
    Creating a List and Adding Values
    Adding values to the List           ${city_Hyderabad}       ${city_Banglore}    ${city_Mumbai}
    Extract the Values from a List      ${list_Cities}
    Inserting values in to the List     ${list_Cities}      1    ${city_Delhi}

*** Keywords ***

Creating a List and Adding Values
    @{list_Cities}=     Create List

    Set Global Variable             ${list_Cities}

Adding values to the List
    [Arguments]     ${Value1}       ${Value2}       ${Value3}

    Append to List    ${list_Cities}  ${Value1}
    Append to List    ${list_Cities}  ${Value2}
    Append to List    ${list_Cities}  ${Value3}

    Log to Console      ${list_Cities}


Extract the Values from a List
    [Arguments]         ${input_List}

    Log to Console        ${input_List}
    ${first_List_Value}=          Get From List       ${input_List}        0
    Log to Console        First Value: ${first_List_Value}
    ${second_List_Value}=          Get From List       ${input_List}       1
    Log to Console        Second Value: ${second_List_Value}


Inserting values in to the List
    [Arguments]         ${list}     ${index}        ${val}

    Insert Into List        ${list}      ${index}        ${val}

    Log to Console          ${list}


*** Variables ***
${city_Hyderabad}               Hyderabad
${city_Banglore}                Banglore
${city_Mumbai}                  Mumbai
${city_Delhi}                   Delhi

