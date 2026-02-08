*** Settings ***
Documentation    HomePage PO
Library     Browser


*** Variables ***
${SEARCH_BOX}    //input[@data-testid="search-input"] >> visible=true

*** Keywords ***
Search For Product
    [Arguments]    ${product_name}
    Wait For Elements State   ${SEARCH_BOX}    visible
    Fill Text    ${SEARCH_BOX}       ${product_name}
    Press Keys     ${SEARCH_BOX}    Enter
    Sleep    5s