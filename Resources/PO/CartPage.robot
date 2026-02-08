*** Settings ***
Documentation    Search Results Page Object for B.tech website
Library    Browser

*** Variables ***
${TOTAL_PRICE_TEXT}    //span[contains(text(),'الإجمالي')]



*** Keywords ***
Verify That Cart Page Is Displayed
     Wait For Elements State   ${TOTAL_PRICE_TEXT}      visible